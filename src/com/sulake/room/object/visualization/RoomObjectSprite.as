package com.sulake.room.object.visualization
{
   import flash.display.BitmapData;
   import flash.display.BlendMode;
   import flash.geom.Point;
   
   public final class RoomObjectSprite implements IRoomObjectSprite
   {
      
      private static var var_1119:int = 0;
       
      
      private var _updateID:int = 0;
      
      private var var_1632:Boolean = false;
      
      private var var_1118:String;
      
      private var var_1113:String = "";
      
      private var var_1633:int = 0;
      
      private var var_336:Boolean = true;
      
      private var _height:int = 0;
      
      private var var_1634:int = 255;
      
      private var _color:int = 16777215;
      
      private var var_954:Boolean = false;
      
      private var var_953:Boolean = false;
      
      private var var_1631:Boolean = false;
      
      private var _offset:Point;
      
      private var var_1635:Boolean = true;
      
      private var var_997:Number = 0;
      
      private var _width:int = 0;
      
      private var var_1636:String = "";
      
      private var var_919:BitmapData = null;
      
      public function RoomObjectSprite()
      {
         var_1118 = BlendMode.NORMAL;
         _offset = new Point(0,0);
         super();
         var_1633 = var_1119++;
      }
      
      public function set flipV(param1:Boolean) : void
      {
         var_953 = param1;
         ++_updateID;
      }
      
      public function set clickHandling(param1:Boolean) : void
      {
         var_1631 = param1;
         ++_updateID;
      }
      
      public function dispose() : void
      {
         var_919 = null;
         _width = 0;
         _height = 0;
      }
      
      public function get offsetX() : int
      {
         return _offset.x;
      }
      
      public function get offsetY() : int
      {
         return _offset.y;
      }
      
      public function get height() : int
      {
         return _height;
      }
      
      public function set blendMode(param1:String) : void
      {
         var_1118 = param1;
         ++_updateID;
      }
      
      public function set tag(param1:String) : void
      {
         var_1636 = param1;
         ++_updateID;
      }
      
      public function set assetName(param1:String) : void
      {
         var_1113 = param1;
         ++_updateID;
      }
      
      public function get varyingDepth() : Boolean
      {
         return var_1632;
      }
      
      public function set offsetX(param1:int) : void
      {
         _offset.x = param1;
         ++_updateID;
      }
      
      public function set offsetY(param1:int) : void
      {
         _offset.y = param1;
         ++_updateID;
      }
      
      public function get relativeDepth() : Number
      {
         return var_997;
      }
      
      public function get color() : int
      {
         return _color;
      }
      
      public function get alpha() : int
      {
         return var_1634;
      }
      
      public function set capturesMouse(param1:Boolean) : void
      {
         var_1635 = param1;
         ++_updateID;
      }
      
      public function get visible() : Boolean
      {
         return var_336;
      }
      
      public function set varyingDepth(param1:Boolean) : void
      {
         var_1632 = param1;
         ++_updateID;
      }
      
      public function get flipH() : Boolean
      {
         return var_954;
      }
      
      public function get flipV() : Boolean
      {
         return var_953;
      }
      
      public function get clickHandling() : Boolean
      {
         return var_1631;
      }
      
      public function get blendMode() : String
      {
         return var_1118;
      }
      
      public function get instanceId() : int
      {
         return var_1633;
      }
      
      public function get tag() : String
      {
         return var_1636;
      }
      
      public function get assetName() : String
      {
         return var_1113;
      }
      
      public function set relativeDepth(param1:Number) : void
      {
         var_997 = param1;
         ++_updateID;
      }
      
      public function get capturesMouse() : Boolean
      {
         return var_1635;
      }
      
      public function set alpha(param1:int) : void
      {
         param1 &= 255;
         var_1634 = param1;
         ++_updateID;
      }
      
      public function get width() : int
      {
         return _width;
      }
      
      public function get updateId() : int
      {
         return _updateID;
      }
      
      public function set color(param1:int) : void
      {
         param1 &= 16777215;
         _color = param1;
         ++_updateID;
      }
      
      public function set asset(param1:BitmapData) : void
      {
         if(param1 != null)
         {
            _width = param1.width;
            _height = param1.height;
         }
         var_919 = param1;
         ++_updateID;
      }
      
      public function set visible(param1:Boolean) : void
      {
         var_336 = param1;
         ++_updateID;
      }
      
      public function get asset() : BitmapData
      {
         return var_919;
      }
      
      public function set flipH(param1:Boolean) : void
      {
         var_954 = param1;
         ++_updateID;
      }
   }
}
