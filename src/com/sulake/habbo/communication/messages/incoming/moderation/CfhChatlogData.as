package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_1001:int;
      
      private var var_2195:int;
      
      private var var_1556:int;
      
      private var var_110:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         var_1556 = param1.readInteger();
         var_2195 = param1.readInteger();
         var_1001 = param1.readInteger();
         var_110 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + var_1556);
      }
      
      public function get reportedUserId() : int
      {
         return var_1001;
      }
      
      public function get callerUserId() : int
      {
         return var_2195;
      }
      
      public function get callId() : int
      {
         return var_1556;
      }
      
      public function get room() : RoomChatlogData
      {
         return var_110;
      }
   }
}
