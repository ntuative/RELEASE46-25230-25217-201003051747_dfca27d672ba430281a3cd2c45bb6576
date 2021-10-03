package com.sulake.habbo.communication.messages.parser.sound
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class SoundSettingsParser implements IMessageParser
   {
       
      
      private var var_665:int;
      
      public function SoundSettingsParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_665 = param1.readInteger();
         return true;
      }
      
      public function get volume() : int
      {
         return var_665;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
   }
}
