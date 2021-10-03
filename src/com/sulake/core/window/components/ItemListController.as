package com.sulake.core.window.components
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.WindowContext;
   import com.sulake.core.window.WindowController;
   import com.sulake.core.window.enum.WindowParam;
   import com.sulake.core.window.enum.WindowStyle;
   import com.sulake.core.window.enum.WindowType;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowNotifyEvent;
   import com.sulake.core.window.graphics.WindowRedrawFlag;
   import com.sulake.core.window.utils.IIterator;
   import com.sulake.core.window.utils.Iterator;
   import com.sulake.core.window.utils.PropertyStruct;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   
   public class ItemListController extends WindowController implements IItemListWindow
   {
      
      protected static const const_1020:String = "resize_on_item_update";
      
      protected static const const_1021:String = "spacing";
      
      protected static const const_1388:Boolean = false;
      
      protected static const DEF_SPACING:int = 0;
      
      protected static const const_1022:String = "scale_to_fit_items";
      
      protected static const DEF_RESIZE_ON_ITEM_UPDATE:Boolean = false;
      
      protected static const const_1389:Boolean = true;
      
      protected static const const_1023:String = "auto_arrange_items";
       
      
      protected var _container:IWindowContainer;
      
      protected var _spacing:int = 0;
      
      protected var var_68:Number;
      
      protected var var_2330:Number = 0;
      
      protected var var_527:Boolean = false;
      
      protected var var_2331:Number = 0;
      
      protected var var_525:Number;
      
      protected var var_1101:Boolean = false;
      
      protected var var_526:Number;
      
      protected var var_182:Boolean = false;
      
      protected var var_90:Number;
      
      protected var var_1367:Boolean = false;
      
      protected var _horizontal:Boolean = false;
      
      protected var var_745:Boolean = true;
      
      public function ItemListController(param1:String, param2:uint, param3:uint, param4:uint, param5:WindowContext, param6:Rectangle, param7:IWindow, param8:Function = null, param9:Array = null, param10:Array = null, param11:uint = 0)
      {
         var_525 = 0;
         var_526 = 0;
         var_90 = 0;
         var_68 = 0;
         _horizontal = param2 == WindowType.const_309;
         super(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11);
         var_162 = var_743 || !testParamFlag(WindowParam.const_30);
         _container = _context.create("_CONTAINER","",WindowType.const_280,WindowStyle.const_288,0 | 0 | 0,new Rectangle(0,0,width,height),null,this,0,null,[WindowController.INTERNAL_CHILD_TAG,WindowController.EXCLUDE_CHILD_TAG]) as IWindowContainer;
         _container.addEventListener(WindowEvent.const_43,containerEventHandler);
         _container.addEventListener(WindowEvent.const_413,containerEventHandler);
         _container.addEventListener(WindowEvent.const_301,containerEventHandler);
         _container.addEventListener(WindowEvent.const_450,containerEventHandler);
         resizeOnItemUpdate = var_1101;
      }
      
      public function swapListItemsAt(param1:int, param2:int) : void
      {
         _container.swapChildrenAt(param1,param2);
         updateScrollAreaRegion();
      }
      
      public function get visibleRegion() : Rectangle
      {
         return new Rectangle(var_525 * maxScrollH,var_526 * maxScrollV,width,height);
      }
      
      public function get maxScrollH() : int
      {
         var _loc1_:int = var_90 - width;
         return _loc1_ < 0 ? 0 : int(_loc1_);
      }
      
      public function get scrollH() : Number
      {
         return var_525;
      }
      
      override public function dispose() : void
      {
         _container.removeEventListener(WindowEvent.const_43,containerEventHandler);
         _container.removeEventListener(WindowEvent.const_413,containerEventHandler);
         _container.removeEventListener(WindowEvent.const_301,containerEventHandler);
         _container.removeEventListener(WindowEvent.const_450,containerEventHandler);
         super.dispose();
      }
      
      public function get maxScrollV() : int
      {
         var _loc1_:int = var_68 - height;
         return _loc1_ < 0 ? 0 : int(_loc1_);
      }
      
      public function get scrollV() : Number
      {
         return var_526;
      }
      
      public function set scrollH(param1:Number) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 > 1)
         {
            param1 = 1;
         }
         if(param1 != var_525)
         {
            var_525 = param1;
            _container.x = -var_525 * maxScrollH;
            _context.invalidate(_container,visibleRegion,WindowRedrawFlag.const_71);
         }
      }
      
      override public function get properties() : Array
      {
         var _loc1_:Array = super.properties;
         _loc1_.push(new PropertyStruct(const_1021,_spacing,PropertyStruct.const_63,_spacing != DEF_SPACING));
         _loc1_.push(new PropertyStruct(const_1023,var_745,PropertyStruct.const_55,var_745 != const_1389));
         _loc1_.push(new PropertyStruct(const_1022,var_527,PropertyStruct.const_55,var_527 != const_1388));
         _loc1_.push(new PropertyStruct(const_1020,var_1101,PropertyStruct.const_55,var_1101 != DEF_RESIZE_ON_ITEM_UPDATE));
         return _loc1_;
      }
      
      public function get scrollStepH() : Number
      {
         return !!_horizontal ? Number(0 / numListItems) : Number(0);
      }
      
      public function setListItemIndex(param1:IWindow, param2:int) : void
      {
         _container.setChildIndex(param1,param2);
      }
      
      public function get scrollStepV() : Number
      {
         return !!_horizontal ? 0 : Number(0 / numListItems);
      }
      
      public function groupListItemsWithID(param1:uint, param2:Array, param3:Boolean = false) : uint
      {
         return _container.method_8(param1,param2,param3);
      }
      
      public function get spacing() : int
      {
         return _spacing;
      }
      
      public function set scrollV(param1:Number) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(param1 > 1)
         {
            param1 = 1;
         }
         if(param1 != var_526)
         {
            var_526 = param1;
            _container.y = -var_526 * maxScrollV;
            _context.invalidate(_container,visibleRegion,WindowRedrawFlag.const_71);
         }
      }
      
      public function set scrollStepH(param1:Number) : void
      {
         var_2330 = Math.max(param1,0);
      }
      
      override public function set properties(param1:Array) : void
      {
         var _loc2_:* = null;
         for each(_loc2_ in param1)
         {
            switch(_loc2_.key)
            {
               case const_1021:
                  spacing = _loc2_.value as int;
                  break;
               case const_1022:
                  scaleToFitItems = _loc2_.value as Boolean;
                  break;
               case const_1020:
                  resizeOnItemUpdate = _loc2_.value as Boolean;
                  break;
               case const_1023:
                  var_745 = _loc2_.value as Boolean;
                  break;
            }
         }
         super.properties = param1;
      }
      
      public function addListItemAt(param1:IWindow, param2:uint) : IWindow
      {
         param1 = _container.addChildAt(param1,param2);
         updateScrollAreaRegion();
         return param1;
      }
      
      public function get iterator() : IIterator
      {
         return new Iterator(this);
      }
      
      public function groupListItemsWithTag(param1:String, param2:Array, param3:Boolean = false) : uint
      {
         return _container.groupChildrenWithTag(param1,param2,param3);
      }
      
      public function swapListItems(param1:IWindow, param2:IWindow) : void
      {
         _container.swapChildren(param1,param2);
         updateScrollAreaRegion();
      }
      
      public function set scaleToFitItems(param1:Boolean) : void
      {
         var_527 = param1;
         updateScrollAreaRegion();
      }
      
      public function set scrollStepV(param1:Number) : void
      {
         var_2331 = Math.max(param1,0);
      }
      
      public function get scrollableRegion() : Rectangle
      {
         return _container.rectangle.clone();
      }
      
      private function containerEventHandler(param1:Event) : void
      {
         switch(param1.type)
         {
            case WindowEvent.const_413:
               updateScrollAreaRegion();
               break;
            case WindowEvent.const_301:
               if(!var_1367)
               {
                  updateScrollAreaRegion();
               }
               break;
            case WindowEvent.const_450:
               updateScrollAreaRegion();
               break;
            case WindowEvent.const_43:
               dispatchEvent(new WindowEvent(WindowEvent.const_43,this,null));
               break;
            default:
               Logger.log("ItemListController::containerEventHandler(" + param1.type + ")");
         }
      }
      
      public function removeListItem(param1:IWindow) : IWindow
      {
         param1 = _container.removeChild(param1);
         updateScrollAreaRegion();
         return param1;
      }
      
      public function arrangeListItems() : void
      {
         updateScrollAreaRegion();
      }
      
      public function get lastListItem() : IWindow
      {
         return numListItems > 0 ? getListItemAt(numListItems - 1) : null;
      }
      
      public function removeListItemAt(param1:int) : IWindow
      {
         return _container.removeChildAt(param1);
      }
      
      public function set spacing(param1:int) : void
      {
         if(param1 != _spacing)
         {
            _spacing = param1;
            updateScrollAreaRegion();
         }
      }
      
      public function addListItem(param1:IWindow) : IWindow
      {
         var_182 = true;
         if(_horizontal)
         {
            param1.x = var_90 + (numListItems > 0 ? _spacing : 0);
            var_90 = param1.rectangle.right;
            _container.width = var_90;
         }
         else
         {
            if(autoArrangeItems)
            {
               param1.y = var_68 + (numListItems > 0 ? _spacing : 0);
               var_68 = param1.rectangle.bottom;
            }
            else
            {
               var_68 = Math.max(var_68,param1.rectangle.bottom);
            }
            _container.height = var_68;
         }
         param1 = _container.addChild(param1);
         var_182 = false;
         return param1;
      }
      
      public function set autoArrangeItems(param1:Boolean) : void
      {
         var_745 = param1;
         updateScrollAreaRegion();
      }
      
      public function getListItemByID(param1:uint) : IWindow
      {
         return _container.getChildByID(param1);
      }
      
      public function set resizeOnItemUpdate(param1:Boolean) : void
      {
         var_1101 = param1;
         if(_container)
         {
            if(_horizontal)
            {
               _container.setParamFlag(WindowParam.const_365,param1);
            }
            else
            {
               _container.setParamFlag(WindowParam.WINDOW_PARAM_REFLECT_VERTICAL_RESIZE_TO_PARENT,param1);
            }
         }
      }
      
      public function get firstListItem() : IWindow
      {
         return numListItems > 0 ? getListItemAt(0) : null;
      }
      
      protected function updateScrollAreaRegion() : void
      {
         var _loc1_:int = 0;
         var _loc2_:* = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(var_745 && !var_182 && _container)
         {
            var_182 = true;
            _loc1_ = 0;
            if(_horizontal)
            {
               var_90 = 0;
               var_68 = var_5.height;
               _loc4_ = 0;
               while(_loc4_ < _loc1_)
               {
                  _loc2_ = _container.getChildAt(_loc4_);
                  if(_loc2_.visible)
                  {
                     _loc2_.x = var_90;
                     var_90 += _loc2_.width + _spacing;
                     if(var_527)
                     {
                        _loc3_ = _loc2_.height + _loc2_.y;
                        var_68 = _loc3_ > var_68 ? Number(_loc3_) : Number(var_68);
                     }
                  }
                  _loc4_++;
               }
               if(_loc1_ > 0)
               {
                  var_90 -= _spacing;
               }
            }
            else
            {
               var_90 = var_5.width;
               var_68 = 0;
               _loc4_ = 0;
               while(_loc4_ < _loc1_)
               {
                  _loc2_ = _container.getChildAt(_loc4_);
                  if(_loc2_.visible)
                  {
                     _loc2_.y = var_68;
                     var_68 += _loc2_.height + _spacing;
                     if(var_527)
                     {
                        _loc3_ = _loc2_.width + _loc2_.x;
                        var_90 = _loc3_ > var_90 ? Number(_loc3_) : Number(var_90);
                     }
                  }
                  _loc4_++;
               }
               if(_loc1_ > 0)
               {
                  var_68 -= _spacing;
               }
            }
            if(var_525 > 0)
            {
               if(var_90 <= var_5.width)
               {
                  scrollH = 0;
               }
               else
               {
                  _container.x = -(var_525 * maxScrollH);
               }
            }
            if(var_526 > 0)
            {
               if(var_68 <= var_5.height)
               {
                  scrollV = 0;
               }
               else
               {
                  _container.y = -(var_526 * maxScrollV);
               }
            }
            _container.height = var_68;
            _container.width = var_90;
            var_182 = false;
         }
      }
      
      public function getListItemByName(param1:String) : IWindow
      {
         return _container.getChildByName(param1);
      }
      
      public function removeListItems() : void
      {
         var_182 = true;
         while(numListItems > 0)
         {
            _container.removeChildAt(0);
         }
         var_182 = false;
         updateScrollAreaRegion();
      }
      
      public function get scaleToFitItems() : Boolean
      {
         return var_527;
      }
      
      override protected function cloneChildWindows(param1:WindowController) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < numListItems)
         {
            IItemListWindow(param1).addListItem(getListItemAt(_loc2_).clone());
            _loc2_++;
         }
      }
      
      override public function update(param1:WindowController, param2:Event) : Boolean
      {
         var _loc3_:Boolean = super.update(param1,param2);
         switch(param2.type)
         {
            case WindowNotifyEvent.const_398:
               break;
            case WindowNotifyEvent.const_689:
               var_1367 = true;
               break;
            case WindowNotifyEvent.const_208:
               if(!var_527)
               {
                  if(_horizontal)
                  {
                     _container.height = var_5.height;
                  }
                  else
                  {
                     _container.width = var_5.width;
                  }
               }
               updateScrollAreaRegion();
               var_1367 = false;
               break;
            case MouseEvent.MOUSE_WHEEL:
               if(_horizontal)
               {
                  scrollH -= MouseEvent(param2).delta * 0.01;
               }
               else
               {
                  scrollV -= MouseEvent(param2).delta * 0.01;
               }
               _loc3_ = true;
         }
         return _loc3_;
      }
      
      public function get autoArrangeItems() : Boolean
      {
         return var_745;
      }
      
      public function getListItemIndex(param1:IWindow) : int
      {
         return _container.getChildIndex(param1);
      }
      
      public function get resizeOnItemUpdate() : Boolean
      {
         return var_1101;
      }
      
      public function getListItemAt(param1:uint) : IWindow
      {
         return _container.getChildAt(param1);
      }
      
      public function get numListItems() : int
      {
         return _container != null ? 0 : 0;
      }
      
      public function destroyListItems() : void
      {
         var_182 = true;
         while(numListItems > 0)
         {
            _container.removeChildAt(0).destroy();
         }
         var_182 = false;
         updateScrollAreaRegion();
      }
   }
}
