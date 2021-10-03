package com.sulake.habbo.widget.messages
{
   public class RoomWidgetUserActionMessage extends RoomWidgetMessage
   {
      
      public static const const_519:String = "RWUAM_RESPECT_USER";
      
      public static const const_602:String = "RWUAM_GIVE_RIGHTS";
      
      public static const const_624:String = "RWUAM_START_TRADING";
      
      public static const const_526:String = "RWUAM_TAKE_RIGHTS";
      
      public static const const_661:String = "RWUAM_WHISPER_USER";
      
      public static const const_562:String = "RWUAM_IGNORE_USER";
      
      public static const const_415:String = "RWUAM_REQUEST_PET_UPDATE";
      
      public static const const_595:String = "RWUAM_BAN_USER";
      
      public static const const_596:String = "RWUAM_UNIGNORE_USER";
      
      public static const const_408:String = "RWUAM_KICK_USER";
      
      public static const const_648:String = "RWUAM_SEND_FRIEND_REQUEST";
      
      public static const const_576:String = " RWUAM_RESPECT_PET";
      
      public static const const_367:String = "RWUAM_KICK_BOT";
      
      public static const const_1273:String = "RWUAM_TRAIN_PET";
      
      public static const const_524:String = "RWUAM_PICKUP_PET";
      
      public static const const_587:String = "RWUAM_OPEN_HOME_PAGE";
      
      public static const const_670:String = "RWUAM_REPORT";
       
      
      private var _userId:int = 0;
      
      public function RoomWidgetUserActionMessage(param1:String, param2:int = 0)
      {
         super(param1);
         _userId = param2;
      }
      
      public function get userId() : int
      {
         return _userId;
      }
   }
}
