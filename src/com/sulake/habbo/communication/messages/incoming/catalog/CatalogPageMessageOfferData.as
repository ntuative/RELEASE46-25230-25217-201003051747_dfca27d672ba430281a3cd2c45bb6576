package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageOfferData
   {
       
      
      private var var_912:Array;
      
      private var var_837:int;
      
      private var var_1247:String;
      
      private var _offerId:int;
      
      private var var_838:int;
      
      public function CatalogPageMessageOfferData(param1:IMessageDataWrapper)
      {
         super();
         _offerId = param1.readInteger();
         var_1247 = param1.readString();
         var_837 = param1.readInteger();
         var_838 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         var_912 = new Array();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            var_912.push(new CatalogPageMessageProductData(param1));
            _loc3_++;
         }
      }
      
      public function get products() : Array
      {
         return var_912;
      }
      
      public function get priceInCredits() : int
      {
         return var_837;
      }
      
      public function get localizationId() : String
      {
         return var_1247;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get priceInPixels() : int
      {
         return var_838;
      }
   }
}