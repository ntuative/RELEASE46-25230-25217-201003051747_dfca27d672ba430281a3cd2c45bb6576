package com.sulake.habbo.communication.messages.parser.availability
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class AvailabilityStatusMessageParser implements IMessageParser
   {
       
      
      private var var_942:Boolean;
      
      private var var_1127:Boolean;
      
      public function AvailabilityStatusMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_942 = param1.readInteger() > 0;
         var_1127 = param1.readInteger() > 0;
         return true;
      }
      
      public function get isOpen() : Boolean
      {
         return var_942;
      }
      
      public function get onShutDown() : Boolean
      {
         return var_1127;
      }
      
      public function flush() : Boolean
      {
         var_942 = false;
         var_1127 = false;
         return true;
      }
   }
}
