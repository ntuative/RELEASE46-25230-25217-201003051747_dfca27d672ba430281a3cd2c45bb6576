package com.sulake.habbo.communication.messages.incoming.marketplace
{
   public class MarketPlaceOffer
   {
       
      
      private var var_1197:int;
      
      private var var_1785:int = -1;
      
      private var var_365:int;
      
      private var var_1757:int;
      
      private var var_1772:int;
      
      private var _offerId:int;
      
      private var var_1196:int;
      
      private var var_1639:int;
      
      public function MarketPlaceOffer(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int, param7:int, param8:int = -1)
      {
         super();
         _offerId = param1;
         var_1639 = param2;
         var_1772 = param3;
         var_1197 = param4;
         var_365 = param5;
         var_1785 = param6;
         var_1757 = param7;
         var_1196 = param8;
      }
      
      public function get status() : int
      {
         return var_365;
      }
      
      public function get price() : int
      {
         return var_1197;
      }
      
      public function get timeLeftMinutes() : int
      {
         return var_1785;
      }
      
      public function get offerCount() : int
      {
         return var_1196;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get furniType() : int
      {
         return var_1772;
      }
      
      public function get averagePrice() : int
      {
         return var_1757;
      }
      
      public function get furniId() : int
      {
         return var_1639;
      }
   }
}
