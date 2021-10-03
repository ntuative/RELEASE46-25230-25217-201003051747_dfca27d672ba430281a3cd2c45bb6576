package com.sulake.habbo.communication.messages.parser.room.engine
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   
   public class RoomEntryInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1886:int;
      
      private var var_414:Boolean;
      
      private var var_1885:Boolean;
      
      private var var_809:PublicRoomShortData;
      
      public function RoomEntryInfoMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1885 = param1.readBoolean();
         if(var_1885)
         {
            var_1886 = param1.readInteger();
            var_414 = param1.readBoolean();
         }
         else
         {
            var_809 = new PublicRoomShortData(param1);
         }
         return true;
      }
      
      public function flush() : Boolean
      {
         if(var_809 != null)
         {
            var_809.dispose();
            var_809 = null;
         }
         return true;
      }
      
      public function get guestRoomId() : int
      {
         return var_1886;
      }
      
      public function get owner() : Boolean
      {
         return var_414;
      }
      
      public function get guestRoom() : Boolean
      {
         return var_1885;
      }
      
      public function get publicSpace() : PublicRoomShortData
      {
         return var_809;
      }
   }
}
