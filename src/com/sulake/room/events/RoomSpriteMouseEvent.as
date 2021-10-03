package com.sulake.room.events
{
   public class RoomSpriteMouseEvent
   {
       
      
      private var var_1842:Boolean = false;
      
      private var var_1835:Boolean = false;
      
      private var var_1836:String = "";
      
      private var _type:String = "";
      
      private var var_1839:Boolean = false;
      
      private var var_1643:Number = 0;
      
      private var var_1840:Number = 0;
      
      private var var_1838:Number = 0;
      
      private var var_1837:String = "";
      
      private var var_1647:Number = 0;
      
      private var var_1841:Boolean = false;
      
      public function RoomSpriteMouseEvent(param1:String, param2:String, param3:String, param4:Number, param5:Number, param6:Number = 0, param7:Number = 0, param8:Boolean = false, param9:Boolean = false, param10:Boolean = false, param11:Boolean = false)
      {
         super();
         _type = param1;
         var_1837 = param2;
         var_1836 = param3;
         var_1840 = param4;
         var_1838 = param5;
         var_1643 = param6;
         var_1647 = param7;
         var_1841 = param8;
         var_1835 = param9;
         var_1839 = param10;
         var_1842 = param11;
      }
      
      public function get ctrlKey() : Boolean
      {
         return var_1841;
      }
      
      public function get buttonDown() : Boolean
      {
         return var_1842;
      }
      
      public function get localX() : Number
      {
         return var_1643;
      }
      
      public function get localY() : Number
      {
         return var_1647;
      }
      
      public function get canvasId() : String
      {
         return var_1837;
      }
      
      public function get altKey() : Boolean
      {
         return var_1835;
      }
      
      public function get spriteTag() : String
      {
         return var_1836;
      }
      
      public function get type() : String
      {
         return _type;
      }
      
      public function get screenX() : Number
      {
         return var_1840;
      }
      
      public function get screenY() : Number
      {
         return var_1838;
      }
      
      public function get shiftKey() : Boolean
      {
         return var_1839;
      }
   }
}
