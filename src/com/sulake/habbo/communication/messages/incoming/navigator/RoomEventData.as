package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomEventData implements IDisposable
   {
       
      
      private var _disposed:Boolean;
      
      private var var_1875:String;
      
      private var var_415:int;
      
      private var var_2185:String;
      
      private var var_2183:String;
      
      private var var_2182:int;
      
      private var var_2186:String;
      
      private var var_2184:int;
      
      private var var_612:Array;
      
      private var var_1023:Boolean;
      
      public function RoomEventData(param1:IMessageDataWrapper)
      {
         var _loc5_:* = null;
         var_612 = new Array();
         super();
         var _loc2_:String = param1.readString();
         if(_loc2_ == "-1")
         {
            Logger.log("Got null room event");
            this.var_1023 = false;
            return;
         }
         this.var_1023 = true;
         var_2182 = int(_loc2_);
         var_2185 = param1.readString();
         var_415 = int(param1.readString());
         var_2184 = param1.readInteger();
         var_1875 = param1.readString();
         var_2183 = param1.readString();
         var_2186 = param1.readString();
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = param1.readString();
            var_612.push(_loc5_);
            _loc4_++;
         }
      }
      
      public function get eventType() : int
      {
         return var_2184;
      }
      
      public function get eventName() : String
      {
         return var_1875;
      }
      
      public function get eventDescription() : String
      {
         return var_2183;
      }
      
      public function get ownerAvatarName() : String
      {
         return var_2185;
      }
      
      public function get tags() : Array
      {
         return var_612;
      }
      
      public function get creationTime() : String
      {
         return var_2186;
      }
      
      public function get exists() : Boolean
      {
         return var_1023;
      }
      
      public function get ownerAvatarId() : int
      {
         return var_2182;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
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
      
      public function get flatId() : int
      {
         return var_415;
      }
   }
}
