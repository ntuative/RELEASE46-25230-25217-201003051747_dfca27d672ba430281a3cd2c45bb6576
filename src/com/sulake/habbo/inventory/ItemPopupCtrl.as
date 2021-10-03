package com.sulake.habbo.inventory
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.ITextWindow;
   import flash.display.BitmapData;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.Timer;
   
   public class ItemPopupCtrl
   {
      
      private static const const_1092:int = 100;
      
      private static const const_1091:int = 200;
      
      private static const const_1093:int = 180;
      
      public static const const_915:int = 1;
      
      public static const const_443:int = 2;
      
      private static const const_1090:int = 250;
      
      private static const const_763:int = 5;
       
      
      private var var_576:BitmapData;
      
      private var var_297:Timer;
      
      private var var_6:IWindowContainer;
      
      private var var_692:BitmapData;
      
      private var var_298:Timer;
      
      private var var_71:IWindowContainer;
      
      private var var_1484:int = 2;
      
      private var _assets:IAssetLibrary;
      
      public function ItemPopupCtrl(param1:IWindowContainer, param2:IAssetLibrary)
      {
         var_298 = new Timer(const_1090,1);
         var_297 = new Timer(const_1092,1);
         super();
         if(param1 == null)
         {
            return;
         }
         if(param2 == null)
         {
            return;
         }
         var_71 = param1;
         var_71.visible = false;
         _assets = param2;
         var_298.addEventListener(TimerEvent.TIMER,onDisplayTimer);
         var_297.addEventListener(TimerEvent.TIMER,onHideTimer);
         var _loc3_:BitmapDataAsset = _assets.getAssetByName("popup_arrow_right_png") as BitmapDataAsset;
         if(_loc3_ != null && _loc3_.content != null)
         {
            var_692 = _loc3_.content as BitmapData;
         }
         _loc3_ = _assets.getAssetByName("popup_arrow_left_png") as BitmapDataAsset;
         if(_loc3_ != null && _loc3_.content != null)
         {
            var_576 = _loc3_.content as BitmapData;
         }
      }
      
      public function hide() : void
      {
         var_71.visible = false;
         var_297.reset();
         var_298.reset();
         if(var_6 != null)
         {
            var_6.removeChild(var_71);
         }
      }
      
      public function hideDelayed() : void
      {
         var_297.reset();
         var_298.reset();
         var_297.start();
      }
      
      private function onHideTimer(param1:TimerEvent) : void
      {
         hide();
      }
      
      public function dispose() : void
      {
         if(var_298 != null)
         {
            var_298.removeEventListener(TimerEvent.TIMER,onDisplayTimer);
            var_298.stop();
            var_298 = null;
         }
         if(var_297 != null)
         {
            var_297.removeEventListener(TimerEvent.TIMER,onHideTimer);
            var_297.stop();
            var_297 = null;
         }
         _assets = null;
         var_71 = null;
         var_6 = null;
         var_576 = null;
         var_692 = null;
      }
      
      public function showDelayed() : void
      {
         var_297.reset();
         var_298.reset();
         var_298.start();
      }
      
      private function onDisplayTimer(param1:TimerEvent) : void
      {
         show();
      }
      
      public function updateContent(param1:IWindowContainer, param2:String, param3:BitmapData, param4:int = 2) : void
      {
         var _loc7_:* = null;
         if(var_71 == null)
         {
            return;
         }
         if(param1 == null)
         {
            return;
         }
         if(param3 == null)
         {
            param3 = new BitmapData(1,1,true,16777215);
         }
         if(var_6 != null)
         {
            var_6.removeChild(var_71);
         }
         var_6 = param1;
         var_1484 = param4;
         var _loc5_:ITextWindow = ITextWindow(var_71.findChildByName("item_name_text"));
         if(_loc5_)
         {
            _loc5_.text = param2;
         }
         var _loc6_:IBitmapWrapperWindow = var_71.findChildByName("item_image") as IBitmapWrapperWindow;
         if(_loc6_)
         {
            _loc7_ = new BitmapData(Math.min(const_1093,param3.width),Math.min(const_1091,param3.height),true,16777215);
            _loc7_.copyPixels(param3,new Rectangle(0,0,_loc7_.width,_loc7_.height),new Point(0,0),null,null,true);
            _loc6_.bitmap = _loc7_;
            _loc6_.width = _loc6_.bitmap.width;
            _loc6_.height = _loc6_.bitmap.height;
            _loc6_.x = (0 - _loc6_.width) / 2;
            var_71.height = _loc6_.rectangle.bottom + 10;
         }
      }
      
      private function refreshArrow(param1:int = 2) : void
      {
         if(var_71 == null || false)
         {
            return;
         }
         var _loc2_:IBitmapWrapperWindow = IBitmapWrapperWindow(var_71.findChildByName("arrow_pointer"));
         if(!_loc2_)
         {
            return;
         }
         switch(param1)
         {
            case const_915:
               _loc2_.bitmap = var_692.clone();
               _loc2_.width = var_692.width;
               _loc2_.height = var_692.height;
               _loc2_.y = (0 - 0) / 2;
               _loc2_.x = -1;
               break;
            case const_443:
               _loc2_.bitmap = var_576.clone();
               _loc2_.width = var_576.width;
               _loc2_.height = var_576.height;
               _loc2_.y = (0 - 0) / 2;
               _loc2_.x = 1;
         }
         _loc2_.invalidate();
      }
      
      public function show() : void
      {
         var_297.reset();
         var_298.reset();
         if(var_6 == null)
         {
            return;
         }
         var_71.visible = true;
         var_6.addChild(var_71);
         refreshArrow(var_1484);
         switch(var_1484)
         {
            case const_915:
               var_71.x = 0 - const_763;
               break;
            case const_443:
               var_71.x = var_6.width + const_763;
         }
         var_71.y = (0 - 0) / 2;
      }
   }
}
