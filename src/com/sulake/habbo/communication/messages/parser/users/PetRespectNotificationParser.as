package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.parser.inventory.pets.PetData;
   
   public class PetRespectNotificationParser implements IMessageParser
   {
       
      
      private var var_2065:int;
      
      private var var_1300:PetData;
      
      private var var_2132:int;
      
      public function PetRespectNotificationParser()
      {
         super();
      }
      
      public function get respect() : int
      {
         return var_2065;
      }
      
      public function get petData() : PetData
      {
         return var_1300;
      }
      
      public function flush() : Boolean
      {
         var_1300 = null;
         return true;
      }
      
      public function get petOwnerId() : int
      {
         return var_2132;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_2065 = param1.readInteger();
         var_2132 = param1.readInteger();
         var_1300 = new PetData(param1);
         return true;
      }
   }
}
