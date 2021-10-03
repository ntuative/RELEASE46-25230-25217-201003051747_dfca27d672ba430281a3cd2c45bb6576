package com.sulake.habbo.catalog.marketplace
{
   import flash.display.BitmapData;
   
   public class MarketPlaceOfferData
   {
       
      
      private var var_1855:int;
      
      private var var_1197:int;
      
      private var var_1757:int;
      
      private var var_1785:int = -1;
      
      private var var_365:int;
      
      private var var_1772:int;
      
      private var _image:BitmapData;
      
      private var _offerId:int;
      
      private var var_1196:int;
      
      private var var_1639:int;
      
      public function MarketPlaceOfferData(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int, param7:int = -1)
      {
         super();
         _offerId = param1;
         var_1639 = param2;
         var_1772 = param3;
         var_1197 = param4;
         var_365 = param5;
         var_1757 = param6;
         var_1196 = param7;
      }
      
      public function set imageCallback(param1:int) : void
      {
         var_1855 = param1;
      }
      
      public function get imageCallback() : int
      {
         return var_1855;
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
      
      public function set timeLeftMinutes(param1:int) : void
      {
         var_1785 = param1;
      }
      
      public function dispose() : void
      {
         if(_image)
         {
            _image.dispose();
            _image = null;
         }
      }
      
      public function set price(param1:int) : void
      {
         var_1197 = param1;
      }
      
      public function set offerCount(param1:int) : void
      {
         var_1196 = param1;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
      
      public function get status() : int
      {
         return var_365;
      }
      
      public function get averagePrice() : int
      {
         return var_1757;
      }
      
      public function set offerId(param1:int) : void
      {
         _offerId = param1;
      }
      
      public function set image(param1:BitmapData) : void
      {
         if(_image != null)
         {
            _image.dispose();
         }
         _image = param1;
      }
      
      public function get furniId() : int
      {
         return var_1639;
      }
   }
}
