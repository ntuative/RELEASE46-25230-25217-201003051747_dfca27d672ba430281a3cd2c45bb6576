package com.sulake.habbo.communication.messages.parser.help
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class TutorialStatusMessageParser implements IMessageParser
   {
       
      
      private var var_1078:Boolean;
      
      private var var_1077:Boolean;
      
      private var var_1076:Boolean;
      
      public function TutorialStatusMessageParser()
      {
         super();
      }
      
      public function get hasCalledGuideBot() : Boolean
      {
         return var_1078;
      }
      
      public function get hasChangedName() : Boolean
      {
         return var_1077;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1076 = param1.readBoolean();
         var_1077 = param1.readBoolean();
         var_1078 = param1.readBoolean();
         return true;
      }
      
      public function get hasChangedLooks() : Boolean
      {
         return var_1076;
      }
      
      public function flush() : Boolean
      {
         var_1076 = false;
         var_1077 = false;
         var_1078 = false;
         return true;
      }
   }
}
