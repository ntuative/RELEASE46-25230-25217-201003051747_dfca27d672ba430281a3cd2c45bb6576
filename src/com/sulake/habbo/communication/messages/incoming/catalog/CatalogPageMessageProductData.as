package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_223:String = "e";
      
      public static const const_76:String = "i";
      
      public static const const_77:String = "s";
       
      
      private var var_980:String;
      
      private var var_1167:String;
      
      private var var_1170:int;
      
      private var var_1856:int;
      
      private var var_981:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         var_1167 = param1.readString();
         var_1856 = param1.readInteger();
         var_980 = param1.readString();
         var_981 = param1.readInteger();
         var_1170 = param1.readInteger();
      }
      
      public function get productCount() : int
      {
         return var_981;
      }
      
      public function get productType() : String
      {
         return var_1167;
      }
      
      public function get expiration() : int
      {
         return var_1170;
      }
      
      public function get furniClassId() : int
      {
         return var_1856;
      }
      
      public function get extraParam() : String
      {
         return var_980;
      }
   }
}
