package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
       
      
      private var var_2057:int;
      
      private var var_1284:String;
      
      private var var_2054:int;
      
      private var var_2053:int;
      
      private var var_2055:int;
      
      private var var_2056:Boolean;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function get productName() : String
      {
         return var_1284;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return var_2056;
      }
      
      public function get responseType() : int
      {
         return var_2053;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return var_2054;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1284 = param1.readString();
         var_2054 = param1.readInteger();
         var_2057 = param1.readInteger();
         var_2055 = param1.readInteger();
         var_2053 = param1.readInteger();
         var_2056 = param1.readBoolean();
         return true;
      }
      
      public function get memberPeriods() : int
      {
         return var_2057;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return var_2055;
      }
   }
}
