package com.sulake.habbo.catalog.purchase
{
   import com.sulake.habbo.communication.messages.incoming.catalog.GiftWrappingConfigurationEvent;
   import com.sulake.habbo.communication.messages.parser.catalog.GiftWrappingConfigurationParser;
   
   public class GiftWrappingConfiguration
   {
       
      
      private var var_541:Array;
      
      private var var_1197:int;
      
      private var var_1398:Array;
      
      private var var_542:Array;
      
      private var var_1618:Boolean = false;
      
      public function GiftWrappingConfiguration(param1:GiftWrappingConfigurationEvent)
      {
         super();
         if(param1 == null)
         {
            return;
         }
         var _loc2_:GiftWrappingConfigurationParser = param1.getParser();
         if(_loc2_ == null)
         {
            return;
         }
         var_1618 = _loc2_.isWrappingEnabled;
         var_1197 = _loc2_.wrappingPrice;
         var_1398 = _loc2_.stuffTypes;
         var_542 = _loc2_.boxTypes;
         var_541 = _loc2_.ribbonTypes;
      }
      
      public function get ribbonTypes() : Array
      {
         return var_541;
      }
      
      public function get stuffTypes() : Array
      {
         return var_1398;
      }
      
      public function get price() : int
      {
         return var_1197;
      }
      
      public function get boxTypes() : Array
      {
         return var_542;
      }
      
      public function get isEnabled() : Boolean
      {
         return var_1618;
      }
   }
}
