package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_1616:int;
      
      private var var_1407:int;
      
      private var var_1617:int;
      
      private var var_1619:int;
      
      private var var_1621:int;
      
      private var var_1408:int;
      
      private var var_1620:int;
      
      private var var_1618:Boolean;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get offerMaxPrice() : int
      {
         return var_1616;
      }
      
      public function get tokenBatchPrice() : int
      {
         return var_1407;
      }
      
      public function get averagePricePeriod() : int
      {
         return var_1620;
      }
      
      public function get offerMinPrice() : int
      {
         return var_1619;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get expirationHours() : int
      {
         return var_1621;
      }
      
      public function get tokenBatchSize() : int
      {
         return var_1408;
      }
      
      public function get commission() : int
      {
         return var_1617;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1618 = param1.readBoolean();
         var_1617 = param1.readInteger();
         var_1407 = param1.readInteger();
         var_1408 = param1.readInteger();
         var_1619 = param1.readInteger();
         var_1616 = param1.readInteger();
         var_1621 = param1.readInteger();
         var_1620 = param1.readInteger();
         return true;
      }
      
      public function get isEnabled() : Boolean
      {
         return var_1618;
      }
   }
}
