package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarPostureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_1603:String;
      
      private var var_901:String;
      
      public function RoomObjectAvatarPostureUpdateMessage(param1:String, param2:String = "")
      {
         super();
         var_1603 = param1;
         var_901 = param2;
      }
      
      public function get postureType() : String
      {
         return var_1603;
      }
      
      public function get parameter() : String
      {
         return var_901;
      }
   }
}
