package com.sulake.habbo.widget.messages
{
   public class RoomWidgetSelectOutfitMessage extends RoomWidgetMessage
   {
      
      public static const const_1003:String = "select_outfit";
       
      
      private var var_2051:int;
      
      public function RoomWidgetSelectOutfitMessage(param1:int)
      {
         super(const_1003);
         var_2051 = param1;
      }
      
      public function get outfitId() : int
      {
         return var_2051;
      }
   }
}
