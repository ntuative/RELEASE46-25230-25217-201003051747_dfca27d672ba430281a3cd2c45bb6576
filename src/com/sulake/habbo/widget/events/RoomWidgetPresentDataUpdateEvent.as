package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetPresentDataUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_387:String = "RWPDUE_CONTENTS_CLUB";
      
      public static const const_392:String = "RWPDUE_CONTENTS_LANDSCAPE";
      
      public static const const_73:String = "RWPDUE_CONTENTS";
      
      public static const const_448:String = "RWPDUE_CONTENTS_WALLPAPER";
      
      public static const const_369:String = "RWPDUE_CONTENTS_FLOOR";
      
      public static const const_60:String = "RWPDUE_PACKAGEINFO";
       
      
      private var var_190:String;
      
      private var var_1604:BitmapData;
      
      private var var_148:int = -1;
      
      private var var_10:Boolean;
      
      public function RoomWidgetPresentDataUpdateEvent(param1:String, param2:int, param3:String, param4:Boolean = false, param5:BitmapData = null, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         var_148 = param2;
         var_190 = param3;
         var_10 = param4;
         var_1604 = param5;
      }
      
      public function get iconBitmapData() : BitmapData
      {
         return var_1604;
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
