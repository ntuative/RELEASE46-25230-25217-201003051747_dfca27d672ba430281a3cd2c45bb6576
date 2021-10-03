package com.sulake.habbo.widget.messages
{
   public class RoomWidgetStickieSendUpdateMessage extends RoomWidgetMessage
   {
      
      public static const const_439:String = "RWSUM_STICKIE_SEND_UPDATE";
      
      public static const const_554:String = "RWSUM_STICKIE_SEND_DELETE";
       
      
      private var var_628:String;
      
      private var var_148:int;
      
      private var var_190:String;
      
      public function RoomWidgetStickieSendUpdateMessage(param1:String, param2:int, param3:String = "", param4:String = "")
      {
         super(param1);
         var_148 = param2;
         var_190 = param3;
         var_628 = param4;
      }
      
      public function get objectId() : int
      {
         return var_148;
      }
      
      public function get text() : String
      {
         return var_190;
      }
      
      public function get colorHex() : String
      {
         return var_628;
      }
   }
}
