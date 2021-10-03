package com.sulake.core.assets
{
   public class AssetTypeDeclaration
   {
       
      
      private var var_1912:Class;
      
      private var var_1910:Class;
      
      private var var_1911:String;
      
      private var var_1228:Array;
      
      public function AssetTypeDeclaration(param1:String, param2:Class, param3:Class, ... rest)
      {
         super();
         var_1911 = param1;
         var_1910 = param2;
         var_1912 = param3;
         if(rest == null)
         {
            var_1228 = new Array();
         }
         else
         {
            var_1228 = rest;
         }
      }
      
      public function get loaderClass() : Class
      {
         return var_1912;
      }
      
      public function get assetClass() : Class
      {
         return var_1910;
      }
      
      public function get mimeType() : String
      {
         return var_1911;
      }
      
      public function get fileTypes() : Array
      {
         return var_1228;
      }
   }
}
