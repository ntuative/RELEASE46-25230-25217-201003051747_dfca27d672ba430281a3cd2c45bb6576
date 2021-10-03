package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenCatalogMessage extends RoomWidgetMessage
   {
      
      public static const const_564:String = "RWOCM_CLUB_MAIN";
      
      public static const const_617:String = "RWGOI_MESSAGE_OPEN_CATALOG";
       
      
      private var var_1642:String = "";
      
      public function RoomWidgetOpenCatalogMessage(param1:String)
      {
         super(const_617);
         var_1642 = param1;
      }
      
      public function get pageKey() : String
      {
         return var_1642;
      }
   }
}
