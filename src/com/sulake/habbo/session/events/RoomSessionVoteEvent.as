package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionVoteEvent extends RoomSessionEvent
   {
      
      public static const const_103:String = "RSPE_VOTE_RESULT";
      
      public static const const_117:String = "RSPE_VOTE_QUESTION";
       
      
      private var var_1239:int = 0;
      
      private var var_1038:String = "";
      
      private var var_732:Array;
      
      private var var_1009:Array;
      
      public function RoomSessionVoteEvent(param1:String, param2:IRoomSession, param3:String, param4:Array, param5:Array = null, param6:int = 0, param7:Boolean = false, param8:Boolean = false)
      {
         var_1009 = [];
         var_732 = [];
         super(param1,param2,param7,param8);
         var_1038 = param3;
         var_1009 = param4;
         var_732 = param5;
         if(var_732 == null)
         {
            var_732 = [];
         }
         var_1239 = param6;
      }
      
      public function get votes() : Array
      {
         return var_732.slice();
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
   }
}
