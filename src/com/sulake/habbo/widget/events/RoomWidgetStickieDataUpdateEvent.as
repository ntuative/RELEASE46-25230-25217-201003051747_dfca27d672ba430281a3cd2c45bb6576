package com.sulake.habbo.widget.events
{
   public class RoomWidgetStickieDataUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_582:String = "RWSDUE_STICKIE_DATA";
       
      
      private var var_190:String;
      
      private var var_628:String;
      
      private var var_1393:String;
      
      private var var_148:int = -1;
      
      private var var_10:Boolean;
      
      public function RoomWidgetStickieDataUpdateEvent(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Boolean, param7:Boolean = false, param8:Boolean = false)
      {
         super(param1,param7,param8);
         var_148 = param2;
         var_1393 = param3;
         var_190 = param4;
         var_628 = param5;
         var_10 = param6;
      }
      
      public function get objectType() : String
      {
         return var_1393;
      }
      
      public function get colorHex() : String
      {
         return var_628;
      }
      
      public function get text() : String
      {
         return var_190;
      }
      
      public function get objectId() : int
      {
         return var_148;
      }
      
      public function get controller() : Boolean
      {
         return var_10;
      }
   }
}
