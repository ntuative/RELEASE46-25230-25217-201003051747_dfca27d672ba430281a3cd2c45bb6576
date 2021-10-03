package com.sulake.habbo.widget.events
{
   public class RoomWidgetVoteUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_103:String = "RWPUE_VOTE_RESULT";
      
      public static const const_117:String = "RWPUE_VOTE_QUESTION";
       
      
      private var var_1239:int;
      
      private var var_1038:String;
      
      private var var_732:Array;
      
      private var var_1009:Array;
      
      public function RoomWidgetVoteUpdateEvent(param1:String, param2:String, param3:Array, param4:Array = null, param5:int = 0, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         var_1038 = param2;
         var_1009 = param3;
         var_732 = param4;
         if(var_732 == null)
         {
            var_732 = [];
         }
         var_1239 = param5;
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
