package com.sulake.habbo.communication.messages.parser.inventory.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetReceivedMessageParser implements IMessageParser
   {
       
      
      private var var_1068:PetData;
      
      private var var_1548:Boolean;
      
      public function PetReceivedMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1548 = param1.readBoolean();
         var_1068 = new PetData(param1);
         Logger.log("Got PetReceived: " + var_1548 + ", " + var_1068.id + ", " + var_1068.name + ", " + pet.figure + ", " + var_1068.type);
         return true;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get boughtAsGift() : Boolean
      {
         return var_1548;
      }
      
      public function get pet() : PetData
      {
         return var_1068;
      }
   }
}
