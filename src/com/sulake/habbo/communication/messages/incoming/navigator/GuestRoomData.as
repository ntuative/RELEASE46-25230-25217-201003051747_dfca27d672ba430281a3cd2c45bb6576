package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var _disposed:Boolean;
      
      private var var_1804:int;
      
      private var var_2037:String;
      
      private var var_2036:int;
      
      private var var_2035:int;
      
      private var var_705:Boolean;
      
      private var var_1863:Boolean;
      
      private var var_415:int;
      
      private var var_1176:String;
      
      private var var_1865:int;
      
      private var var_1234:int;
      
      private var _ownerName:String;
      
      private var var_632:String;
      
      private var var_2039:int;
      
      private var var_2040:RoomThumbnailData;
      
      private var var_2038:Boolean;
      
      private var var_612:Array;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         var_612 = new Array();
         super();
         var_415 = param1.readInteger();
         var_705 = param1.readBoolean();
         var_632 = param1.readString();
         _ownerName = param1.readString();
         var_1865 = param1.readInteger();
         var_1804 = param1.readInteger();
         var_2039 = param1.readInteger();
         var_1176 = param1.readString();
         var_2036 = param1.readInteger();
         var_2038 = param1.readBoolean();
         var_2035 = param1.readInteger();
         var_1234 = param1.readInteger();
         var_2037 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            var_612.push(_loc4_);
            _loc3_++;
         }
         var_2040 = new RoomThumbnailData(param1);
         var_1863 = param1.readBoolean();
      }
      
      public function get maxUserCount() : int
      {
         return var_2039;
      }
      
      public function get roomName() : String
      {
         return var_632;
      }
      
      public function get userCount() : int
      {
         return var_1804;
      }
      
      public function get score() : int
      {
         return var_2035;
      }
      
      public function get eventCreationTime() : String
      {
         return var_2037;
      }
      
      public function get allowTrading() : Boolean
      {
         return var_2038;
      }
      
      public function get tags() : Array
      {
         return var_612;
      }
      
      public function get allowPets() : Boolean
      {
         return var_1863;
      }
      
      public function get event() : Boolean
      {
         return var_705;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         this.var_612 = null;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get categoryId() : int
      {
         return var_1234;
      }
      
      public function get srchSpecPrm() : int
      {
         return var_2036;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return var_2040;
      }
      
      public function get doorMode() : int
      {
         return var_1865;
      }
      
      public function get flatId() : int
      {
         return var_415;
      }
      
      public function get description() : String
      {
         return var_1176;
      }
   }
}
