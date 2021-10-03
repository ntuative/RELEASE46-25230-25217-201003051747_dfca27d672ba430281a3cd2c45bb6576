package com.sulake.habbo.widget.events
{
   public class RoomWidgetHabboClubUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_186:String = "RWBIUE_HABBO_CLUB";
       
      
      private var var_2180:Boolean = false;
      
      private var var_2181:int = 0;
      
      private var var_2178:int = 0;
      
      private var var_2179:int = 0;
      
      public function RoomWidgetHabboClubUpdateEvent(param1:int, param2:int, param3:int, param4:Boolean, param5:Boolean = false, param6:Boolean = false)
      {
         super(const_186,param5,param6);
         var_2179 = param1;
         var_2178 = param2;
         var_2181 = param3;
         var_2180 = param4;
      }
      
      public function get pastPeriods() : int
      {
         return var_2181;
      }
      
      public function get periodsLeft() : int
      {
         return var_2178;
      }
      
      public function get daysLeft() : int
      {
         return var_2179;
      }
      
      public function get allowClubDances() : Boolean
      {
         return var_2180;
      }
   }
}
