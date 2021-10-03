package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetBadgeImageUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_623:String = "RWBIUE_BADGE_IMAGE";
       
      
      private var var_2160:BitmapData;
      
      private var var_1834:String;
      
      public function RoomWidgetBadgeImageUpdateEvent(param1:String, param2:BitmapData, param3:Boolean = false, param4:Boolean = false)
      {
         super(const_623,param3,param4);
         var_1834 = param1;
         var_2160 = param2;
      }
      
      public function get badgeImage() : BitmapData
      {
         return var_2160;
      }
      
      public function get badgeID() : String
      {
         return var_1834;
      }
   }
}
