package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class RoomVisitData
   {
       
      
      private var var_632:String;
      
      private var var_1909:int;
      
      private var var_1395:Boolean;
      
      private var _roomId:int;
      
      private var var_1908:int;
      
      public function RoomVisitData(param1:IMessageDataWrapper)
      {
         super();
         var_1395 = param1.readBoolean();
         _roomId = param1.readInteger();
         var_632 = param1.readString();
         var_1908 = param1.readInteger();
         var_1909 = param1.readInteger();
      }
      
      public function get isPublic() : Boolean
      {
         return var_1395;
      }
      
      public function get roomName() : String
      {
         return var_632;
      }
      
      public function get enterMinute() : int
      {
         return var_1909;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get enterHour() : int
      {
         return var_1908;
      }
   }
}
