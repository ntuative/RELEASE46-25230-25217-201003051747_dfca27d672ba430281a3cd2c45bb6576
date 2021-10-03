package com.sulake.habbo.communication.messages.parser.poll
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class VoteResultMessageParser implements IMessageParser
   {
       
      
      private var var_1239:int;
      
      private var var_1038:String;
      
      private var var_732:Array;
      
      private var var_1009:Array;
      
      public function VoteResultMessageParser()
      {
         super();
      }
      
      public function get votes() : Array
      {
         return var_732.slice();
      }
      
      public function flush() : Boolean
      {
         var_1038 = "";
         var_1009 = [];
         var_732 = [];
         var_1239 = 0;
         return true;
      }
      
      public function get totalVotes() : int
      {
         return var_1239;
      }
      
      public function get question() : String
      {
         return var_1038;
      }
      
      public function get choices() : Array
      {
         return var_1009.slice();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1038 = param1.readString();
         var_1009 = [];
         var_732 = [];
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            param1.readInteger();
            var_1009.push(param1.readString());
            var_732.push(param1.readInteger());
            _loc3_++;
         }
         var_1239 = param1.readInteger();
         return true;
      }
   }
}
