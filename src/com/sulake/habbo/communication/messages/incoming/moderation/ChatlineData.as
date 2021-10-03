package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChatlineData
   {
       
      
      private var var_1448:String;
      
      private var var_1598:int;
      
      private var var_1599:int;
      
      private var var_1597:int;
      
      private var var_1600:String;
      
      public function ChatlineData(param1:IMessageDataWrapper)
      {
         super();
         var_1598 = param1.readInteger();
         var_1597 = param1.readInteger();
         var_1599 = param1.readInteger();
         var_1600 = param1.readString();
         var_1448 = param1.readString();
      }
      
      public function get msg() : String
      {
         return var_1448;
      }
      
      public function get hour() : int
      {
         return var_1598;
      }
      
      public function get minute() : int
      {
         return var_1597;
      }
      
      public function get chatterName() : String
      {
         return var_1600;
      }
      
      public function get chatterId() : int
      {
         return var_1599;
      }
   }
}
