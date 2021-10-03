package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageOfferData;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageProductData;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer
   {
      
      public static const const_836:String = "price_type_none";
      
      public static const const_419:String = "pricing_model_multi";
      
      public static const const_405:String = "price_type_credits";
      
      public static const const_397:String = "price_type_credits_and_pixels";
      
      public static const const_403:String = "pricing_model_bundle";
      
      public static const const_435:String = "pricing_model_single";
      
      public static const const_500:String = "price_type_credits_or_credits_and_pixels";
      
      public static const const_1204:String = "pricing_model_unknown";
      
      public static const const_384:String = "price_type_pixels";
       
      
      private var var_837:int;
      
      private var _offerId:int;
      
      private var var_838:int;
      
      private var var_399:String;
      
      private var var_577:String;
      
      private var var_1963:int;
      
      private var var_678:ICatalogPage;
      
      private var var_1247:String;
      
      private var var_400:IProductContainer;
      
      public function Offer(param1:CatalogPageMessageOfferData, param2:ICatalogPage)
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         super();
         _offerId = param1.offerId;
         var_1247 = param1.localizationId;
         var_837 = param1.priceInCredits;
         var_838 = param1.priceInPixels;
         var_678 = param2;
         var _loc3_:Array = new Array();
         for each(_loc4_ in param1.products)
         {
            _loc5_ = param2.viewer.catalog.getProductData(param1.localizationId);
            _loc6_ = param2.viewer.catalog.getFurnitureData(_loc4_.furniClassId,_loc4_.productType);
            _loc7_ = new Product(_loc4_,_loc5_,_loc6_);
            _loc3_.push(_loc7_);
         }
         analyzePricingModel(_loc3_);
         analyzePriceType();
         createProductContainer(_loc3_);
      }
      
      public function get pricingModel() : String
      {
         return var_399;
      }
      
      public function get page() : ICatalogPage
      {
         return var_678;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         var_1963 = param1;
      }
      
      public function get productContainer() : IProductContainer
      {
         return var_400;
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
      
      public function dispose() : void
      {
         _offerId = 0;
         var_1247 = "";
         var_837 = 0;
         var_838 = 0;
         var_678 = null;
         if(var_400 != null)
         {
            var_400.dispose();
            var_400 = null;
         }
      }
      
      public function get priceType() : String
      {
         return var_577;
      }
      
      public function get previewCallbackId() : int
      {
         return var_1963;
      }
      
      public function get priceInCredits() : int
      {
         return var_837;
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               var_399 = const_435;
            }
            else
            {
               var_399 = const_419;
            }
         }
         else if(param1.length > 1)
         {
            var_399 = const_403;
         }
         else
         {
            var_399 = const_1204;
         }
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(var_399)
         {
            case const_435:
               var_400 = new SingleProductContainer(this,param1);
               break;
            case const_419:
               var_400 = new MultiProductContainer(this,param1);
               break;
            case const_403:
               var_400 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + var_399);
         }
      }
      
      private function analyzePriceType() : void
      {
         if(var_837 > 0 && var_838 > 0)
         {
            var_577 = const_397;
         }
         else if(var_837 > 0)
         {
            var_577 = const_405;
         }
         else if(var_838 > 0)
         {
            var_577 = const_384;
         }
         else
         {
            var_577 = const_836;
         }
      }
   }
}
