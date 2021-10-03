package com.sulake.habbo.communication.messages.incoming.avatar
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.avatar.ChangeUserNameResultMessageParser;
   
   public class ChangeUserNameResultMessageEvent extends MessageEvent implements IMessageEvent
   {
      
      public static var var_1090:int = 3;
      
      public static var var_1091:int = 5;
      
      public static var var_1585:int = 7;
      
      public static var var_921:int = 0;
      
      public static var var_1586:int = 6;
      
      public static var var_1089:int = 4;
      
      public static var var_1092:int = 2;
      
      public static var var_1088:int = 1;
       
      
      public function ChangeUserNameResultMessageEvent(param1:Function)
      {
         super(param1,ChangeUserNameResultMessageParser);
      }
      
      public function getParser() : ChangeUserNameResultMessageParser
      {
         return var_4 as ChangeUserNameResultMessageParser;
      }
   }
}
