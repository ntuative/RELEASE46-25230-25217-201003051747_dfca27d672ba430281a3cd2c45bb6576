package com.sulake.habbo.moderation
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IFrameWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.incoming.moderation.ModeratorUserInfoData;
   import com.sulake.habbo.communication.messages.outgoing.moderator.GetModeratorUserInfoMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.moderator.GetUserChatlogMessageComposer;
   
   public class UserInfoCtrl implements IDisposable
   {
      
      private static const const_777:int = 31536000;
      
      private static const const_779:int = 86400;
      
      private static const const_778:int = 3600;
      
      private static const const_776:int = 60;
       
      
      private var _disposed:Boolean;
      
      private var _data:ModeratorUserInfoData;
      
      private var _callerFrame:IFrameWindow;
      
      private var _userId:int;
      
      private var var_49:ModerationManager;
      
      private var var_1069:Boolean;
      
      private var var_903:IWindowContainer;
      
      private var var_1264:String;
      
      public function UserInfoCtrl(param1:IFrameWindow, param2:ModerationManager, param3:String, param4:Boolean = false)
      {
         super();
         _callerFrame = param1;
         var_49 = param2;
         var_1264 = param3;
         var_1069 = param4;
      }
      
      public static function formatTime(param1:int) : String
      {
         if(param1 < 2 * const_776)
         {
            return param1 + " secs ago";
         }
         if(param1 < 2 * const_778)
         {
            return Math.round(param1 / const_776) + " mins ago";
         }
         if(param1 < 2 * const_779)
         {
            return Math.round(param1 / const_778) + " hours ago";
         }
         if(param1 < 2 * const_777)
         {
            return Math.round(param1 / const_779) + " days ago";
         }
         return Math.round(param1 / const_777) + " years ago";
      }
      
      private function onChatlogButton(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var_49.windowTracker.show(new ChatlogCtrl(new GetUserChatlogMessageComposer(_data.userId),var_49,WindowTracker.const_946,_data.userId),_callerFrame,var_1069,false,true);
      }
      
      private function prepare() : IWindowContainer
      {
         var _loc1_:IWindowContainer = IWindowContainer(var_903.findChildByName("user_info"));
         if(_loc1_ == null)
         {
            _loc1_ = IWindowContainer(var_49.getXmlWindow("user_info"));
            var_903.addChild(_loc1_);
            var_49.disableButton(var_49.initMsg.chatlogsPermission,_loc1_,"chatlog_but");
            var_49.disableButton(var_49.initMsg.alertPermission,_loc1_,"message_but");
            var_49.disableButton(var_49.initMsg.alertPermission || var_49.initMsg.kickPermission || var_49.initMsg.banPermission,_loc1_,"modaction_but");
         }
         _loc1_.findChildByName("chatlog_but").procedure = onChatlogButton;
         _loc1_.findChildByName("roomvisits_but").procedure = onRoomVisitsButton;
         _loc1_.findChildByName("habboinfotool_but").procedure = onHabboInfoToolButton;
         _loc1_.findChildByName("message_but").procedure = onMessageButton;
         _loc1_.findChildByName("modaction_but").procedure = onModActionButton;
         _loc1_.findChildByName("view_caution_count_txt").procedure = onViewCautions;
         _loc1_.findChildByName("view_ban_count_txt").procedure = onViewBans;
         return _loc1_;
      }
      
      private function onModActionButton(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var_49.windowTracker.show(new ModActionCtrl(var_49,_data.userId,_data.userName,var_1264),_callerFrame,var_1069,false,true);
      }
      
      private function onViewCautions(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         showModeratorLog();
      }
      
      private function onHabboInfoToolButton(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var_49.openHkPage("habboinfotool.url",_data.userName);
      }
      
      private function onRoomVisitsButton(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var_49.windowTracker.show(new RoomVisitsCtrl(var_49,_data.userId),_callerFrame,var_1069,false,true);
      }
      
      private function onViewBans(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         showModeratorLog();
      }
      
      public function onUserInfo(param1:ModeratorUserInfoData) : void
      {
         if(param1.userId != _userId)
         {
            return;
         }
         _data = param1;
         refresh();
      }
      
      public function refresh() : void
      {
         if(false)
         {
            return;
         }
         var _loc1_:IWindowContainer = prepare();
         if(_data == null)
         {
            _loc1_.findChildByName("fields").visible = false;
            _loc1_.findChildByName("loading_txt").visible = true;
            return;
         }
         _loc1_.findChildByName("fields").visible = true;
         _loc1_.findChildByName("loading_txt").visible = false;
         setTxt(_loc1_,"name_txt",_data.userName);
         setTxt(_loc1_,"cfh_count_txt","undefined");
         setAlertTxt(_loc1_,"abusive_cfh_count_txt",_data.abusiveCfhCount,false);
         setAlertTxt(_loc1_,"caution_count_txt",_data.cautionCount,true);
         setAlertTxt(_loc1_,"ban_count_txt",_data.banCount,true);
         setTxt(_loc1_,"registered_txt",formatTime(0));
         setTxt(_loc1_,"last_login_txt",formatTime(0));
         setTxt(_loc1_,"online_txt",!true ? "Yes" : "No");
         Logger.log("USER: undefined, undefined, undefined");
      }
      
      private function showModeratorLog() : void
      {
         var_49.openHkPage("moderatoractionlog.url",_data.userName);
      }
      
      public function load(param1:IWindowContainer, param2:int) : void
      {
         var_903 = param1;
         _userId = param2;
         _data = null;
         refresh();
         var_49.messageHandler.addUserInfoListener(this);
         var_49.connection.send(new GetModeratorUserInfoMessageComposer(param2));
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      private function setTxt(param1:IWindowContainer, param2:String, param3:String) : void
      {
         var _loc4_:ITextWindow = ITextWindow(param1.findChildByName(param2));
         _loc4_.text = param3;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         var_49.messageHandler.removeUserInfoListener(this);
         _callerFrame = null;
         var_49 = null;
         _data = null;
         var_903 = null;
      }
      
      private function onMessageButton(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var_49.windowTracker.show(new SendMsgsCtrl(var_49,_data.userId,_data.userName,var_1264),_callerFrame,var_1069,false,true);
      }
      
      private function setAlertTxt(param1:IWindowContainer, param2:String, param3:int, param4:Boolean) : void
      {
         var _loc5_:ITextWindow = ITextWindow(param1.findChildByName(param2));
         var _loc6_:ITextWindow = ITextWindow(param1.findChildByName("view_" + param2));
         if(_loc6_ != null)
         {
            _loc6_.visible = param3 > 0;
         }
         _loc5_.visible = param3 > 0;
         _loc5_.text = "" + param3;
      }
   }
}
