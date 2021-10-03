package com.sulake.habbo.widget.messages
{
   public class RoomWidgetChatMessage extends RoomWidgetMessage
   {
      
      public static const const_115:int = 0;
      
      public static const const_106:int = 1;
      
      public static const const_97:int = 2;
      
      public static const const_583:String = "RWCM_MESSAGE_CHAT";
       
      
      private var var_1155:int = 0;
      
      private var var_2001:String = "";
      
      private var var_190:String = "";
      
      public function RoomWidgetChatMessage(param1:String, param2:String, param3:int = 0, param4:String = "")
      {
         super(param1);
         var_190 = param2;
         var_1155 = param3;
         var_2001 = param4;
      }
      
      public function get recipientName() : String
      {
         return var_2001;
      }
      
      public function get chatType() : int
      {
         return var_1155;
      }
      
      public function get text() : String
      {
         return var_190;
      }
   }
}
