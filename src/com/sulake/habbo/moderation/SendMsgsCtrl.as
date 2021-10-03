package com.sulake.habbo.moderation
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.components.IDropMenuWindow;
   import com.sulake.core.window.components.IFrameWindow;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.outgoing.moderator.ModMessageMessageComposer;
   import com.sulake.habbo.window.utils.IAlertDialog;
   import flash.events.Event;
   
   public class SendMsgsCtrl implements IDisposable, TrackedWindow
   {
       
      
      private var var_1264:String;
      
      private var _disposed:Boolean;
      
      private var var_1505:String;
      
      private var var_1265:int;
      
      private var var_49:ModerationManager;
      
      private var var_852:IDropMenuWindow;
      
      private var var_405:ITextFieldWindow;
      
      private var var_51:IFrameWindow;
      
      private var var_301:Boolean = true;
      
      public function SendMsgsCtrl(param1:ModerationManager, param2:int, param3:String, param4:String)
      {
         super();
         var_49 = param1;
         var_1265 = param2;
         var_1505 = param3;
         var_1264 = param4;
      }
      
      private function onInputClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowEvent.const_214)
         {
            return;
         }
         if(!var_301)
         {
            return;
         }
         var_405.text = "";
         var_301 = false;
      }
      
      public function getFrame() : IFrameWindow
      {
         return var_51;
      }
      
      public function getId() : String
      {
         return var_1505;
      }
      
      private function onSendMessageButton(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         Logger.log("Sending message...");
         if(var_301 || false)
         {
            var_49.windowManager.alert("Alert","You must input a message to the user",0,onAlertClose);
            return;
         }
         var_49.connection.send(new ModMessageMessageComposer(var_1265,var_405.text,var_1264));
         this.dispose();
      }
      
      public function show() : void
      {
         var_51 = IFrameWindow(var_49.getXmlWindow("send_msgs"));
         var_51.caption = "Msg To: " + var_1505;
         var_51.findChildByName("send_message_but").procedure = onSendMessageButton;
         var_405 = ITextFieldWindow(var_51.findChildByName("message_input"));
         var_405.procedure = onInputClick;
         var_852 = IDropMenuWindow(var_51.findChildByName("msgTemplatesSelect"));
         prepareMsgSelect(var_852);
         var_852.procedure = onSelectTemplate;
         var _loc1_:IWindow = var_51.findChildByTag("close");
         _loc1_.procedure = onClose;
         var_51.visible = true;
      }
      
      private function prepareMsgSelect(param1:IDropMenuWindow) : void
      {
         Logger.log("MSG TEMPLATES: " + var_49.initMsg.messageTemplates.length);
         param1.populate(var_49.initMsg.messageTemplates);
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         if(var_51 != null)
         {
            var_51.destroy();
            var_51 = null;
         }
         var_852 = null;
         var_405 = null;
         var_49 = null;
      }
      
      private function onSelectTemplate(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowEvent.const_50)
         {
            return;
         }
         var _loc3_:String = var_49.initMsg.messageTemplates["null"];
         if(_loc3_ != null)
         {
            var_301 = false;
            var_405.text = _loc3_;
         }
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      private function onClose(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         dispose();
      }
      
      private function onAlertClose(param1:IAlertDialog, param2:Event) : void
      {
         param1.dispose();
      }
      
      public function getType() : int
      {
         return WindowTracker.const_1261;
      }
   }
}
