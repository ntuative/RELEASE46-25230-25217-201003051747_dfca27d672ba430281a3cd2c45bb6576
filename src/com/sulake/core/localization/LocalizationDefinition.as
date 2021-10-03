package com.sulake.core.localization
{
   public class LocalizationDefinition implements ILocalizationDefinition
   {
       
      
      private var _name:String;
      
      private var var_1476:String;
      
      private var var_922:String;
      
      private var var_1478:String;
      
      private var var_1477:String;
      
      public function LocalizationDefinition(param1:String, param2:String, param3:String)
      {
         super();
         var _loc4_:Array = param1.split("_");
         var_1477 = _loc4_[0];
         var _loc5_:Array = String(_loc4_[1]).split(".");
         var_1476 = _loc5_[0];
         var_1478 = _loc5_[1];
         _name = param2;
         var_922 = param3;
      }
      
      public function get countryCode() : String
      {
         return var_1476;
      }
      
      public function get languageCode() : String
      {
         return var_1477;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get url() : String
      {
         return var_922;
      }
      
      public function get encoding() : String
      {
         return var_1478;
      }
      
      public function get id() : String
      {
         return var_1477 + "_" + var_1476 + "." + var_1478;
      }
   }
}
