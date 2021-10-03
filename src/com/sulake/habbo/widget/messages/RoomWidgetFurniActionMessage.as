package com.sulake.habbo.widget.messages
{
   public class RoomWidgetFurniActionMessage extends RoomWidgetMessage
   {
      
      public static const const_236:String = "RWFAM_MOVE";
      
      public static const const_541:String = "RWFUAM_ROTATE";
      
      public static const const_681:String = "RWFAM_PICKUP";
       
      
      private var var_1639:int = 0;
      
      private var var_1640:int = 0;
      
      public function RoomWidgetFurniActionMessage(param1:String, param2:int, param3:int)
      {
         super(param1);
         var_1639 = param2;
         var_1640 = param3;
      }
      
      public function get furniId() : int
      {
         return var_1639;
      }
      
      public function get furniCategory() : int
      {
         return var_1640;
      }
   }
}
