package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AcceptBuddyFailureData
   {
       
      
      private var var_1122:int;
      
      private var var_782:String;
      
      public function AcceptBuddyFailureData(param1:IMessageDataWrapper)
      {
         super();
         this.var_782 = param1.readString();
         this.var_1122 = param1.readInteger();
      }
      
      public function get senderName() : String
      {
         return this.var_782;
      }
      
      public function get errorCode() : int
      {
         return this.var_1122;
      }
   }
}
