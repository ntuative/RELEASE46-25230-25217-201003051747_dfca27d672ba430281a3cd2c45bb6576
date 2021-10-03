package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_1366:String;
      
      private var var_1053:String;
      
      private var var_1725:Boolean;
      
      private var var_1433:int;
      
      private var var_1727:int;
      
      private var var_1723:Boolean;
      
      private var var_1602:String = "";
      
      private var var_1724:Boolean;
      
      private var _category:int;
      
      private var _objId:int;
      
      private var var_1184:int;
      
      private var var_1726:Boolean;
      
      private var var_2027:int = -1;
      
      private var var_1685:int;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int)
      {
         super();
         var_1727 = param1;
         var_1053 = param2;
         _objId = param3;
         var_1184 = param4;
         _category = param5;
         var_1366 = param6;
         var_1725 = param7;
         var_1724 = param8;
         var_1726 = param9;
         var_1723 = param10;
         var_1685 = param11;
      }
      
      public function get slotId() : String
      {
         return var_1602;
      }
      
      public function get extra() : int
      {
         return var_1433;
      }
      
      public function get classId() : int
      {
         return var_1184;
      }
      
      public function get category() : int
      {
         return _category;
      }
      
      public function get isSellable() : Boolean
      {
         return var_1723;
      }
      
      public function get isGroupable() : Boolean
      {
         return var_1725;
      }
      
      public function get stripId() : int
      {
         return var_1727;
      }
      
      public function get stuffData() : String
      {
         return var_1366;
      }
      
      public function get songId() : int
      {
         return var_2027;
      }
      
      public function setExtraData(param1:String, param2:int) : void
      {
         var_1602 = param1;
         var_1433 = param2;
      }
      
      public function get itemType() : String
      {
         return var_1053;
      }
      
      public function get objId() : int
      {
         return _objId;
      }
      
      public function get expiryTime() : int
      {
         return var_1685;
      }
      
      public function get isTradeable() : Boolean
      {
         return var_1726;
      }
      
      public function get isRecyclable() : Boolean
      {
         return var_1724;
      }
   }
}
