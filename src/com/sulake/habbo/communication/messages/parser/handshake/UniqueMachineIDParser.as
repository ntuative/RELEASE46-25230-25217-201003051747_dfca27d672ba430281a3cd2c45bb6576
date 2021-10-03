package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UniqueMachineIDParser implements IMessageParser
   {
       
      
      private var var_904:String;
      
      public function UniqueMachineIDParser()
      {
         super();
         var_904 = "";
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_904 = param1.readString();
         return true;
      }
      
      public function get machineID() : String
      {
         return var_904;
      }
      
      public function flush() : Boolean
      {
         var_904 = "";
         return true;
      }
   }
}
