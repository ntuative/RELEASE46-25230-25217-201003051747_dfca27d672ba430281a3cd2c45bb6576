package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserRightsMessageParser implements IMessageParser
   {
       
      
      protected var var_683:Array = null;
      
      public function UserRightsMessageParser()
      {
         super();
         var_683 = [];
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_683 = [];
         var _loc2_:String = param1.readString();
         while(_loc2_ != "" && _loc2_ != null)
         {
            var_683.push(_loc2_);
            _loc2_ = param1.readString();
         }
         return true;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get rights() : Array
      {
         return var_683.slice();
      }
   }
}
