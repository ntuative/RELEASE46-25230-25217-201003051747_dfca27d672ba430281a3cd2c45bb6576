package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarFigureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_1676:String;
      
      private var var_530:String;
      
      public function RoomObjectAvatarFigureUpdateMessage(param1:String, param2:String = "")
      {
         super();
         var_530 = param1;
         var_1676 = param2;
      }
      
      public function get race() : String
      {
         return var_1676;
      }
      
      public function get figure() : String
      {
         return var_530;
      }
   }
}
