package com.sulake.habbo.widget.messages
{
   public class RoomWidgetVoteMessage extends RoomWidgetMessage
   {
      
      public static const const_104:String = "RWVM_VOTE_MESSAGE";
       
      
      private var var_1347:int;
      
      public function RoomWidgetVoteMessage(param1:int)
      {
         super(const_104);
         var_1347 = param1;
      }
      
      public function get vote() : int
      {
         return var_1347;
      }
   }
}
