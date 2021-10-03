package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   public class ItemDataStructure
   {
       
      
      private var var_1053:String;
      
      private var var_1808:int;
      
      private var var_1814:int;
      
      private var var_1433:int;
      
      private var var_1811:int;
      
      private var _category:int;
      
      private var var_2358:int;
      
      private var var_1807:int;
      
      private var var_1813:int;
      
      private var var_1809:int;
      
      private var var_1810:int;
      
      private var var_1812:Boolean;
      
      private var var_1366:String;
      
      public function ItemDataStructure(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:int, param11:int, param12:Boolean)
      {
         super();
         var_1808 = param1;
         var_1053 = param2;
         var_1814 = param3;
         var_1809 = param4;
         _category = param5;
         var_1366 = param6;
         var_1433 = param7;
         var_1813 = param8;
         var_1807 = param9;
         var_1810 = param10;
         var_1811 = param11;
         var_1812 = param12;
      }
      
      public function get itemTypeID() : int
      {
         return var_1809;
      }
      
      public function get extra() : int
      {
         return var_1433;
      }
      
      public function get stuffData() : String
      {
         return var_1366;
      }
      
      public function get groupable() : Boolean
      {
         return var_1812;
      }
      
      public function get creationMonth() : int
      {
         return var_1810;
      }
      
      public function get roomItemID() : int
      {
         return var_1814;
      }
      
      public function get itemType() : String
      {
         return var_1053;
      }
      
      public function get itemID() : int
      {
         return var_1808;
      }
      
      public function get songID() : int
      {
         return var_1433;
      }
      
      public function get timeToExpiration() : int
      {
         return var_1813;
      }
      
      public function get creationYear() : int
      {
         return var_1811;
      }
      
      public function get creationDay() : int
      {
         return var_1807;
      }
      
      public function get category() : int
      {
         return _category;
      }
   }
}
