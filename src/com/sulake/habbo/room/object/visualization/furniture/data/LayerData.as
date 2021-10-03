package com.sulake.habbo.room.object.visualization.furniture.data
{
   public class LayerData
   {
      
      public static const const_428:int = 255;
      
      public static const INK_DARKEN:int = 3;
      
      public static const const_407:int = 0;
      
      public static const const_995:int = 2;
      
      public static const const_817:int = 1;
      
      public static const const_523:Boolean = false;
      
      public static const const_633:String = "";
      
      public static const const_417:int = 0;
      
      public static const const_446:int = 0;
      
      public static const const_354:int = 0;
       
      
      private var var_1938:int = 0;
      
      private var var_1636:String = "";
      
      private var var_1580:int = 0;
      
      private var var_1936:int = 0;
      
      private var var_1937:Number = 0;
      
      private var var_1634:int = 255;
      
      private var var_1939:Boolean = false;
      
      public function LayerData()
      {
         super();
      }
      
      public function get yOffset() : int
      {
         return var_1938;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            tag = param1.tag;
            ink = param1.ink;
            alpha = param1.alpha;
            ignoreMouse = param1.ignoreMouse;
            method_2 = param1.method_2;
            yOffset = param1.yOffset;
            zOffset = param1.zOffset;
         }
      }
      
      public function set ink(param1:int) : void
      {
         var_1580 = param1;
      }
      
      public function get zOffset() : Number
      {
         return var_1937;
      }
      
      public function set method_2(param1:int) : void
      {
         var_1936 = param1;
      }
      
      public function set yOffset(param1:int) : void
      {
         var_1938 = param1;
      }
      
      public function get tag() : String
      {
         return var_1636;
      }
      
      public function get alpha() : int
      {
         return var_1634;
      }
      
      public function get ink() : int
      {
         return var_1580;
      }
      
      public function set zOffset(param1:Number) : void
      {
         var_1937 = param1;
      }
      
      public function get method_2() : int
      {
         return var_1936;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         var_1939 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return var_1939;
      }
      
      public function set tag(param1:String) : void
      {
         var_1636 = param1;
      }
      
      public function set alpha(param1:int) : void
      {
         var_1634 = param1;
      }
   }
}
