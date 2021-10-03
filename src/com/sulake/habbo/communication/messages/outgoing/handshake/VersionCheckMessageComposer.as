package com.sulake.habbo.communication.messages.outgoing.handshake
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class VersionCheckMessageComposer implements IMessageComposer
   {
       
      
      private var var_2220:String;
      
      private var var_1198:String;
      
      private var var_2221:int;
      
      public function VersionCheckMessageComposer(param1:int, param2:String, param3:String)
      {
         super();
         var_2221 = param1;
         var_1198 = param2;
         var_2220 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [var_2221,var_1198,var_2220];
      }
      
      public function dispose() : void
      {
      }
   }
}
