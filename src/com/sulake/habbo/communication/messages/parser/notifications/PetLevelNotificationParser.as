package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetLevelNotificationParser implements IMessageParser
   {
       
      
      private var var_530:String;
      
      private var var_1630:int;
      
      private var var_1666:String;
      
      private var var_939:int;
      
      private var var_1275:int;
      
      public function PetLevelNotificationParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return var_1275;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1275 = param1.readInteger();
         var_1666 = param1.readString();
         var_1630 = param1.readInteger();
         var_530 = param1.readString();
         var_939 = param1.readInteger();
         return true;
      }
      
      public function get petName() : String
      {
         return var_1666;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get figure() : String
      {
         return var_530;
      }
      
      public function get petType() : int
      {
         return var_939;
      }
      
      public function get level() : int
      {
         return var_1630;
      }
   }
}
