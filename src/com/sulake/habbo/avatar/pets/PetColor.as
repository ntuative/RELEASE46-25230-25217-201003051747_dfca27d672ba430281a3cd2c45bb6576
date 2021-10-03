package com.sulake.habbo.avatar.pets
{
   import flash.geom.ColorTransform;
   
   public class PetColor extends PetEditorInfo implements IPetColor
   {
       
      
      private var _id:int;
      
      private var var_1411:uint;
      
      private var _rgb:uint;
      
      private var var_2247:int;
      
      private var var_1413:Number;
      
      private var _b:uint;
      
      private var var_1410:Number;
      
      private var var_1414:uint;
      
      private var _colorTransform:ColorTransform;
      
      private var var_1412:Number;
      
      public function PetColor(param1:XML)
      {
         super(param1);
         _id = parseInt(param1.@id);
         var _loc2_:String = param1.text();
         _rgb = parseInt(_loc2_,16);
         var_1411 = _rgb >> 16 & 255;
         var_1414 = _rgb >> 8 & 255;
         _b = _rgb >> 0 & 255;
         var_1412 = var_1411 / 255 * 1;
         var_1410 = var_1414 / 255 * 1;
         var_1413 = _b / 255 * 1;
         _colorTransform = new ColorTransform(var_1412,var_1410,var_1413);
      }
      
      public function set figurePartPaletteColorId(param1:int) : void
      {
         var_2247 = param1;
      }
      
      public function get colorTransform() : ColorTransform
      {
         return _colorTransform;
      }
      
      public function get rgb() : uint
      {
         return _rgb;
      }
      
      public function get figurePartPaletteColorId() : int
      {
         return var_2247;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get g() : uint
      {
         return var_1414;
      }
      
      public function get b() : uint
      {
         return _b;
      }
      
      public function get r() : uint
      {
         return var_1411;
      }
   }
}