package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class TagAndUserCountData
   {
       
      
      private var var_1804:int;
      
      private var var_1636:String;
      
      public function TagAndUserCountData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1636 = param1.readString();
         this.var_1804 = param1.readInteger();
      }
      
      public function get userCount() : int
      {
         return this.var_1804;
      }
      
      public function get tag() : String
      {
         return this.var_1636;
      }
   }
}
