package com.sulake.habbo.communication.messages.incoming.avatar
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class OutfitData
   {
       
      
      private var var_1601:String;
      
      private var var_947:String;
      
      private var var_1602:int;
      
      public function OutfitData(param1:IMessageDataWrapper)
      {
         super();
         var_1602 = param1.readInteger();
         var_1601 = param1.readString();
         var_947 = param1.readString();
      }
      
      public function get gender() : String
      {
         return var_947;
      }
      
      public function get figureString() : String
      {
         return var_1601;
      }
      
      public function get slotId() : int
      {
         return var_1602;
      }
   }
}
