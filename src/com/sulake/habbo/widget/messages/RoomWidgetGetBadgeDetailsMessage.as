package com.sulake.habbo.widget.messages
{
   public class RoomWidgetGetBadgeDetailsMessage extends RoomWidgetMessage
   {
      
      public static const const_571:String = "RWGOI_MESSAGE_GET_BADGE_DETAILS";
       
      
      private var var_990:int = 0;
      
      public function RoomWidgetGetBadgeDetailsMessage(param1:int)
      {
         super(const_571);
         var_990 = param1;
      }
      
      public function get groupId() : int
      {
         return var_990;
      }
   }
}
