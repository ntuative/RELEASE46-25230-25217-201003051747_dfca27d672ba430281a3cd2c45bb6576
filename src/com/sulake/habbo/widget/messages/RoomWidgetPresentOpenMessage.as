package com.sulake.habbo.widget.messages
{
   public class RoomWidgetPresentOpenMessage extends RoomWidgetMessage
   {
      
      public static const const_630:String = "RWPOM_OPEN_PRESENT";
       
      
      private var var_148:int;
      
      public function RoomWidgetPresentOpenMessage(param1:String, param2:int)
      {
         super(param1);
         var_148 = param2;
      }
      
      public function get objectId() : int
      {
         return var_148;
      }
   }
}
