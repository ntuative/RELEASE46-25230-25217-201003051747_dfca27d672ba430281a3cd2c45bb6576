package com.sulake.habbo.communication.messages.incoming.recycler
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class PrizeMessageData
   {
       
      
      private var var_1539:int;
      
      private var var_1605:String;
      
      public function PrizeMessageData(param1:IMessageDataWrapper)
      {
         super();
         var_1605 = param1.readString();
         var_1539 = param1.readInteger();
      }
      
      public function get productItemTypeId() : int
      {
         return var_1539;
      }
      
      public function get productItemType() : String
      {
         return var_1605;
      }
   }
}
