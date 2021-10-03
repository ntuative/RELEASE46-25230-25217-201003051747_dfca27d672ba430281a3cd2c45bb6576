package com.sulake.habbo.communication.messages.parser.error
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ErrorReportMessageParser implements IMessageParser
   {
       
      
      private var var_1124:int;
      
      private var var_1122:int;
      
      private var var_1123:String;
      
      public function ErrorReportMessageParser()
      {
         super();
      }
      
      public function get messageId() : int
      {
         return var_1124;
      }
      
      public function flush() : Boolean
      {
         var_1122 = 0;
         var_1124 = 0;
         var_1123 = null;
         return true;
      }
      
      public function get errorCode() : int
      {
         return var_1122;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1124 = param1.readInteger();
         var_1122 = param1.readInteger();
         var_1123 = param1.readString();
         return true;
      }
      
      public function get timestamp() : String
      {
         return var_1123;
      }
   }
}
