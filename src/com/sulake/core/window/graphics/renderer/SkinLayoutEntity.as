package com.sulake.core.window.graphics.renderer
{
   import flash.geom.Rectangle;
   
   public class SkinLayoutEntity implements ISkinLayoutEntity
   {
      
      public static const const_247:uint = 1;
      
      public static const const_456:uint = 0;
      
      public static const const_797:uint = 8;
      
      public static const const_273:uint = 4;
      
      public static const const_400:uint = 2;
       
      
      private var var_421:uint;
      
      private var var_2012:uint;
      
      private var _color:uint;
      
      private var _name:String;
      
      private var var_2011:uint;
      
      private var var_99:Rectangle;
      
      private var var_612:Array;
      
      private var _id:uint;
      
      public function SkinLayoutEntity(param1:uint, param2:String, param3:Rectangle, param4:uint = 4.294967295E9, param5:uint = 100, param6:uint = 0, param7:uint = 0)
      {
         super();
         _id = param1;
         _name = param2;
         var_99 = param3;
         _color = param4;
         var_421 = param5;
         var_2012 = param6;
         var_2011 = param7;
         var_612 = new Array();
      }
      
      public function get scaleH() : uint
      {
         return var_2012;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get blend() : uint
      {
         return var_421;
      }
      
      public function get scaleV() : uint
      {
         return var_2011;
      }
      
      public function get tags() : Array
      {
         return var_612;
      }
      
      public function get id() : uint
      {
         return _id;
      }
      
      public function dispose() : void
      {
         var_99 = null;
         var_612 = null;
      }
      
      public function get color() : uint
      {
         return _color;
      }
      
      public function get region() : Rectangle
      {
         return var_99;
      }
   }
}
