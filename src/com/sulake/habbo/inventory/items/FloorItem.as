package com.sulake.habbo.inventory.items
{
   public class FloorItem implements IItem
   {
       
      
      protected var var_2264:Boolean;
      
      protected var var_1433:Number;
      
      protected var var_2265:Boolean;
      
      protected var _type:int;
      
      protected var var_2254:Boolean;
      
      protected var var_2027:int;
      
      protected var var_2266:Boolean;
      
      protected var var_1366:String;
      
      protected var var_1811:int;
      
      protected var _id:int;
      
      protected var _ref:int;
      
      protected var var_1602:String;
      
      protected var var_1812:Boolean;
      
      protected var _category:int;
      
      protected var var_1810:int;
      
      protected var var_2275:int;
      
      protected var var_1807:int;
      
      public function FloorItem(param1:int, param2:int, param3:int, param4:int, param5:Boolean, param6:Boolean, param7:Boolean, param8:Boolean, param9:String, param10:Number, param11:int, param12:int, param13:int, param14:int, param15:String, param16:int)
      {
         super();
         _id = param1;
         _type = param2;
         _ref = param3;
         _category = param4;
         var_1812 = param5;
         var_2266 = param6;
         var_2264 = param7;
         var_2265 = param8;
         var_1366 = param9;
         var_1433 = param10;
         var_2275 = param11;
         var_1807 = param12;
         var_1810 = param13;
         var_1811 = param14;
         var_1602 = param15;
         var_2027 = param16;
      }
      
      public function get locked() : Boolean
      {
         return var_2254;
      }
      
      public function get category() : int
      {
         return _category;
      }
      
      public function get extra() : Number
      {
         return var_1433;
      }
      
      public function set locked(param1:Boolean) : void
      {
         var_2254 = param1;
      }
      
      public function get ref() : int
      {
         return _ref;
      }
      
      public function get songId() : int
      {
         return var_2027;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get sellable() : Boolean
      {
         return var_2265;
      }
      
      public function get slotId() : String
      {
         return var_1602;
      }
      
      public function get expires() : int
      {
         return var_2275;
      }
      
      public function get creationYear() : int
      {
         return var_1811;
      }
      
      public function get creationDay() : int
      {
         return var_1807;
      }
      
      public function get stuffData() : String
      {
         return var_1366;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get tradeable() : Boolean
      {
         return var_2266;
      }
      
      public function get groupable() : Boolean
      {
         return var_1812;
      }
      
      public function get creationMonth() : int
      {
         return var_1810;
      }
      
      public function get recyclable() : Boolean
      {
         return var_2264;
      }
   }
}
