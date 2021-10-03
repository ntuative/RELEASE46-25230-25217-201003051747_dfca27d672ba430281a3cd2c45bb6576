package com.sulake.habbo.catalog.marketplace
{
   public class MarketplaceItemStats
   {
       
      
      private var var_1501:Array;
      
      private var var_1757:int;
      
      private var var_1753:int;
      
      private var var_1754:int;
      
      private var var_1756:int;
      
      private var _dayOffsets:Array;
      
      private var var_1755:int;
      
      private var var_1500:Array;
      
      public function MarketplaceItemStats()
      {
         super();
      }
      
      public function get dayOffsets() : Array
      {
         return _dayOffsets;
      }
      
      public function get averagePrices() : Array
      {
         return var_1501;
      }
      
      public function set averagePrices(param1:Array) : void
      {
         var_1501 = param1.slice();
      }
      
      public function set dayOffsets(param1:Array) : void
      {
         _dayOffsets = param1.slice();
      }
      
      public function get furniTypeId() : int
      {
         return var_1753;
      }
      
      public function set soldAmounts(param1:Array) : void
      {
         var_1500 = param1.slice();
      }
      
      public function set averagePrice(param1:int) : void
      {
         var_1757 = param1;
      }
      
      public function get historyLength() : int
      {
         return var_1754;
      }
      
      public function get furniCategoryId() : int
      {
         return var_1756;
      }
      
      public function get offerCount() : int
      {
         return var_1755;
      }
      
      public function set offerCount(param1:int) : void
      {
         var_1755 = param1;
      }
      
      public function get soldAmounts() : Array
      {
         return var_1500;
      }
      
      public function get averagePrice() : int
      {
         return var_1757;
      }
      
      public function set furniCategoryId(param1:int) : void
      {
         var_1756 = param1;
      }
      
      public function set historyLength(param1:int) : void
      {
         var_1754 = param1;
      }
      
      public function set furniTypeId(param1:int) : void
      {
         var_1753 = param1;
      }
   }
}
