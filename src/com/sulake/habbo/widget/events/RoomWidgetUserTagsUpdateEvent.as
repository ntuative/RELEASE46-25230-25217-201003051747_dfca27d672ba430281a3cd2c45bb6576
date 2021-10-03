package com.sulake.habbo.widget.events
{
   public class RoomWidgetUserTagsUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_137:String = "RWUTUE_USER_TAGS";
       
      
      private var _userId:int;
      
      private var var_612:Array;
      
      private var var_2189:Boolean;
      
      public function RoomWidgetUserTagsUpdateEvent(param1:int, param2:Array, param3:Boolean, param4:Boolean = false, param5:Boolean = false)
      {
         super(const_137,param4,param5);
         _userId = param1;
         var_612 = param2;
         var_2189 = param3;
      }
      
      public function get userId() : int
      {
         return _userId;
      }
      
      public function get tags() : Array
      {
         return var_612;
      }
      
      public function get isOwnUser() : Boolean
      {
         return var_2189;
      }
   }
}
