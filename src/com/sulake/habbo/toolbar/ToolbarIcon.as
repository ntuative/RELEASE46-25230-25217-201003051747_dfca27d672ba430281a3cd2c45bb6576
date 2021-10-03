package com.sulake.habbo.toolbar
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.IRegionWindow;
   import com.sulake.core.window.enum.WindowType;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.toolbar.events.HabboToolbarEvent;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import com.sulake.habbo.window.enum.HabboWindowStyle;
   import com.sulake.habbo.window.enum.HabboWindowType;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Timer;
   
   public class ToolbarIcon
   {
       
      
      private var var_486:ToolbarIconGroup;
      
      private var var_1023:Boolean = false;
      
      private var var_1996:String;
      
      private var var_825:Number;
      
      private var _assetLibrary:IAssetLibrary;
      
      private var var_1021:String = "-1";
      
      private var _window:IBitmapWrapperWindow;
      
      private var var_34:String = "-1";
      
      private var var_99:IRegionWindow;
      
      private var _bitmapData:BitmapData;
      
      private var var_703:String;
      
      private var var_1595:int;
      
      private var var_704:Timer;
      
      private var var_1502:Array;
      
      private var var_1022:ToolbarIconBouncer;
      
      private var _windowManager:IHabboWindowManager;
      
      private var _events:IEventDispatcher;
      
      private var var_2311:Array;
      
      private var var_263:ToolbarBarMenuAnimator;
      
      private var var_404:ToolbarIconAnimator;
      
      private var var_579:Array;
      
      private var var_845:Array;
      
      private var var_846:String = "-1";
      
      private var var_2367:Boolean = true;
      
      private var var_1024:Array;
      
      private var var_1257:Timer;
      
      private var var_1997:int;
      
      private var var_84:Number = 0;
      
      private var _y:Number = 0;
      
      public function ToolbarIcon(param1:ToolbarIconGroup, param2:IHabboWindowManager, param3:IAssetLibrary, param4:String, param5:IEventDispatcher, param6:ToolbarBarMenuAnimator)
      {
         var_579 = new Array();
         var_845 = new Array();
         var_2311 = new Array();
         var_1022 = new ToolbarIconBouncer(0.8,1);
         super();
         var_486 = param1;
         _windowManager = param2;
         _assetLibrary = param3;
         var_703 = param4;
         _events = param5;
         var_263 = param6;
         var_1257 = new Timer(40,40);
         var_1257.addEventListener(TimerEvent.TIMER,updateBouncer);
         var_99 = param2.createWindow("TOOLBAR_ICON_" + param4 + "_REGION","",WindowType.const_368,HabboWindowStyle.const_39,HabboWindowParam.const_38,new Rectangle(0,0,1,1),onMouseEvent) as IRegionWindow;
         var_99.background = true;
         var_99.alphaTreshold = 0;
         var_99.visible = false;
         _window = IBitmapWrapperWindow(param2.createWindow("TOOLBAR_ICON_" + param4,"",HabboWindowType.BITMAP_WRAPPER,HabboWindowStyle.const_39,HabboWindowParam.const_39,new Rectangle(0,0,1,1),onMouseEvent,0));
         var_99.addChild(_window);
         _window.addEventListener(WindowEvent.const_43,onWindowResized);
      }
      
      private function getStateObject(param1:String) : StateItem
      {
         return var_1502[var_1024.indexOf(param1)];
      }
      
      public function get windowOffsetFromIcon() : Number
      {
         return var_1997;
      }
      
      public function get iconId() : String
      {
         return var_703;
      }
      
      private function onWindowResized(param1:WindowEvent) : void
      {
         updateRegion();
      }
      
      public function changePosition(param1:Number) : void
      {
         var_825 = param1;
         updateRegion();
      }
      
      public function setIcon(param1:Boolean = true) : void
      {
         exists = param1;
         setAnimator();
      }
      
      public function set state(param1:String) : void
      {
         var_34 = param1;
         exists = true;
         setAnimator();
         setTooltip();
      }
      
      private function updateRegion() : void
      {
         if(var_99 == null || _window == null)
         {
            return;
         }
         var_99.width = _window.width;
         var_99.height = _window.height;
         var _loc1_:Boolean = false;
         if(_loc1_)
         {
            var_84 = (0 - 0) / 2;
            _y = var_825 + (0 - 0) / 2;
         }
         else
         {
            var_84 = var_825 + (0 - 0) / 2;
            _y = (0 - 0) / 2;
         }
         var_99.x = var_84;
         var_99.y = _y;
      }
      
      public function dispose() : void
      {
         if(_window != null)
         {
            _window.dispose();
            _window = null;
         }
         if(var_99 != null)
         {
            var_99.dispose();
            var_99 = null;
         }
         var_579 = null;
         var_845 = null;
         exists = false;
         _windowManager = null;
         _events = null;
         var_263 = null;
         var_404 = null;
         _bitmapData = null;
      }
      
      public function dockMenu(param1:String, param2:Array = null, param3:Boolean = false) : void
      {
         var _loc4_:* = null;
         if(var_579.indexOf(param1) < 0)
         {
            var_579.push(param1);
            _loc4_ = new MenuSettingsItem(param1,param2,param3);
            var_845.push(_loc4_);
         }
      }
      
      private function onMouseEvent(param1:WindowEvent, param2:IWindow) : void
      {
         var _loc4_:* = null;
         if(!var_1023)
         {
            return;
         }
         var _loc3_:StateItem = getCurrentStateObject();
         switch(param1.type)
         {
            case WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK:
               if(var_263)
               {
                  var_263.repositionWindow(var_703,true);
               }
               if(_events != null)
               {
                  _loc4_ = new HabboToolbarEvent(HabboToolbarEvent.const_54);
                  _loc4_.iconId = var_703;
                  _events.dispatchEvent(_loc4_);
               }
               break;
            case WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER:
               if(false)
               {
                  if(_loc3_.hasStateOver)
                  {
                     state = _loc3_.stateOver;
                  }
                  else
                  {
                     state = var_1021;
                  }
               }
               break;
            case WindowMouseEvent.const_27:
               if(false)
               {
                  if(_loc3_.hasDefaultState)
                  {
                     state = _loc3_.defaultState;
                  }
                  else
                  {
                     state = var_846;
                  }
               }
         }
      }
      
      public function docksMenu(param1:String) : Boolean
      {
         return var_579.indexOf(param1) > -1;
      }
      
      public function menuLockedToIcon(param1:String) : Boolean
      {
         if(!docksMenu(param1))
         {
            return false;
         }
         var _loc2_:MenuSettingsItem = var_845[var_579.indexOf(param1)];
         return _loc2_.lockToIcon;
      }
      
      public function set exists(param1:Boolean) : void
      {
         var_1023 = param1;
         if(var_99 != null)
         {
            var_99.visible = var_1023;
         }
      }
      
      private function setTooltip() : void
      {
         if(var_99 == null)
         {
            return;
         }
         var _loc1_:StateItem = getCurrentStateObject();
         if(_loc1_ != null && _loc1_.tooltip != null)
         {
            var_99.toolTipCaption = "${toolbar.icon.tooltip." + _loc1_.tooltip + "}";
         }
         else
         {
            var_99.toolTipCaption = "${toolbar.icon.tooltip." + var_1996.toLowerCase() + "}";
         }
         var_99.toolTipDelay = 100;
      }
      
      public function animateWindowIn(param1:String, param2:IWindowContainer, param3:Number, param4:String, param5:Point) : void
      {
         if(var_263 != null)
         {
            var_263.animateWindowIn(this,param1,param2,var_703,param3,param4,getMenuYieldList(param1));
         }
      }
      
      private function updateAnimator(param1:Event) : void
      {
         if(var_404 != null && _window != null)
         {
            var_404.update(_window);
            if(var_404.hasNextState())
            {
               state = var_404.nextState;
            }
         }
      }
      
      public function defineFromXML(param1:XML) : void
      {
         var _loc3_:int = 0;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var_1502 = new Array();
         var_1024 = new Array();
         var_1996 = param1.@id;
         var_1997 = int(param1.@window_offset_from_icon);
         var_1595 = int(param1.@window_margin);
         var _loc2_:XMLList = param1.elements("state");
         if(_loc2_.length() > 0)
         {
            if(param1.attribute("state_over").length() > 0)
            {
               var_1021 = param1.@state_over;
            }
            if(param1.attribute("state_default").length() > 0)
            {
               var_846 = param1.@state_default;
            }
            _loc3_ = 0;
            while(_loc3_ < _loc2_.length())
            {
               _loc4_ = _loc2_[_loc3_];
               _loc5_ = new StateItem(_loc4_,param1.@id.toLowerCase());
               var_1024.push(_loc5_.id);
               var_1502.push(_loc5_);
               if(_loc3_ == 0)
               {
                  if(var_1021 == "-1")
                  {
                     var_1021 = _loc5_.id;
                  }
                  if(var_846 == "-1")
                  {
                     var_846 = _loc5_.id;
                  }
               }
               _loc3_++;
            }
         }
         var_34 = var_846;
      }
      
      public function setIconBitmapData(param1:BitmapData = null) : void
      {
         exists = true;
         _bitmapData = param1;
         setAnimator();
      }
      
      public function hideWindow(param1:String, param2:IWindowContainer, param3:Number, param4:String) : void
      {
         if(var_263 != null)
         {
            var_263.hideWindow(param1,param2,var_703,param3);
         }
      }
      
      public function positionWindow(param1:String, param2:IWindowContainer, param3:Number, param4:String) : void
      {
         if(var_263 != null)
         {
            var_263.positionWindow(this,param1,param2,var_703,param3,getMenuYieldList(param1));
         }
      }
      
      public function animateWindowOut(param1:String, param2:IWindowContainer, param3:String) : void
      {
         if(var_263 != null)
         {
            var_263.animateWindowOut(this,param1,param2,param3);
         }
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get exists() : Boolean
      {
         return var_1023;
      }
      
      private function updateBouncer(param1:Event) : void
      {
         if(var_1022 != null && _window != null)
         {
            var_1022.update();
            _window.y = var_1022.location;
         }
      }
      
      private function setAnimator() : void
      {
         if(var_704 != null)
         {
            var_704.stop();
            var_704 = null;
         }
         var _loc1_:StateItem = getCurrentStateObject();
         if(_loc1_ != null && var_1023)
         {
            if(_loc1_.frames == null)
            {
               return;
            }
            var_404 = new ToolbarIconAnimator(_loc1_,_assetLibrary,_window,var_84,_y,_bitmapData);
            if(false)
            {
               var_704 = new Timer(_loc1_.timer);
               var_704.addEventListener(TimerEvent.TIMER,updateAnimator);
               var_704.start();
            }
            if(_loc1_.bounce)
            {
               var_1022.reset(-7);
               var_1257.reset();
               var_1257.start();
            }
         }
         else
         {
            var_404 = null;
            _window.bitmap = null;
         }
      }
      
      public function get windowMargin() : Number
      {
         return var_1595 + var_486.windowMargin;
      }
      
      private function getCurrentStateObject() : StateItem
      {
         return getStateObject(var_34);
      }
      
      public function get window() : IWindow
      {
         return var_99;
      }
      
      public function get x() : Number
      {
         return var_84;
      }
      
      private function getMenuYieldList(param1:String) : Array
      {
         if(!docksMenu(param1))
         {
            return null;
         }
         var _loc2_:MenuSettingsItem = var_845[var_579.indexOf(param1)];
         return _loc2_.yieldList;
      }
      
      public function get group() : ToolbarIconGroup
      {
         return var_486;
      }
   }
}
