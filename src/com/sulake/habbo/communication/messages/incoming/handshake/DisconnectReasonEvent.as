package com.sulake.habbo.communication.messages.incoming.handshake
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.handshake.DisconnectReasonParser;
   
   public class DisconnectReasonEvent extends MessageEvent implements IMessageEvent
   {
      
      public static const const_1299:String = "DisconnectReasonPeerConnectionLost";
      
      public static const const_893:String = "DisconnectReasonTimeout";
      
      public static const const_659:String = "DisconnectReasonDisconnected";
      
      public static const const_299:String = "DisconnectReasonBanned";
      
      public static const const_954:String = "DisconnectReasonLoggedOut";
      
      public static const const_976:String = "DisconnectReasonConcurrentLogin";
       
      
      public function DisconnectReasonEvent(param1:Function)
      {
         super(param1,DisconnectReasonParser);
      }
      
      public function get reason() : String
      {
         var _loc1_:int = (this.var_4 as DisconnectReasonParser).reason;
         switch(_loc1_)
         {
            case -1:
               return const_659;
            case 0:
               return const_659;
            case 1:
               return const_954;
            case 1009:
            case 2:
               return const_976;
            case 3:
               return const_893;
            case 4:
               return const_1299;
            default:
               return const_659;
         }
      }
   }
}
