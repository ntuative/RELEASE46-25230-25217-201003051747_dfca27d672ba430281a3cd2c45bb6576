package com.sulake.habbo.communication.messages.parser.roomsettings
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomSettingsSaveErrorMessageParser implements IMessageParser
   {
      
      public static const const_1551:int = 9;
      
      public static const const_1432:int = 4;
      
      public static const const_1599:int = 1;
      
      public static const const_1311:int = 10;
      
      public static const const_1445:int = 2;
      
      public static const const_1327:int = 7;
      
      public static const const_1240:int = 11;
      
      public static const const_1506:int = 3;
      
      public static const const_1168:int = 8;
      
      public static const const_1370:int = 5;
      
      public static const const_1573:int = 6;
      
      public static const const_1229:int = 12;
       
      
      private var var_1744:String;
      
      private var _roomId:int;
      
      private var var_1122:int;
      
      public function RoomSettingsSaveErrorMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get info() : String
      {
         return var_1744;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         _roomId = param1.readInteger();
         var_1122 = param1.readInteger();
         var_1744 = param1.readString();
         return true;
      }
      
      public function get errorCode() : int
      {
         return var_1122;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
   }
}
