package com.sulake.habbo.help
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.communication.messages.IMessageComposer;
   import com.sulake.core.runtime.Component;
   import com.sulake.core.runtime.IContext;
   import com.sulake.core.runtime.IID;
   import com.sulake.core.runtime.IUnknown;
   import com.sulake.habbo.communication.IHabboCommunicationManager;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.help.cfh.data.CallForHelpData;
   import com.sulake.habbo.help.cfh.data.UserRegistry;
   import com.sulake.habbo.help.enum.HabboHelpViewEnum;
   import com.sulake.habbo.help.help.HelpUI;
   import com.sulake.habbo.help.help.data.FaqIndex;
   import com.sulake.habbo.help.tutorial.TutorialUI;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.session.IRoomSessionManager;
   import com.sulake.habbo.session.events.RoomSessionEvent;
   import com.sulake.habbo.toolbar.HabboToolbarIconEnum;
   import com.sulake.habbo.toolbar.IHabboToolbar;
   import com.sulake.habbo.toolbar.events.HabboToolbarEvent;
   import com.sulake.habbo.toolbar.events.HabboToolbarSetIconEvent;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.iid.IIDHabboCommunicationManager;
   import com.sulake.iid.IIDHabboConfigurationManager;
   import com.sulake.iid.IIDHabboLocalizationManager;
   import com.sulake.iid.IIDHabboRoomSessionManager;
   import com.sulake.iid.IIDHabboToolbar;
   import flash.utils.Dictionary;
   import iid.IIDHabboWindowManager;
   
   public class HabboHelp extends Component implements IHabboHelp
   {
       
      
      private var var_1888:UserRegistry;
      
      private var _assetLibrary:IAssetLibrary;
      
      private var var_129:TutorialUI;
      
      private var var_675:IHabboLocalizationManager;
      
      private var _windowManager:IHabboWindowManager;
      
      private var var_56:HelpUI;
      
      private var var_676:IHabboConfigurationManager;
      
      private var var_188:IHabboToolbar;
      
      private var var_292:IHabboCommunicationManager;
      
      private var var_810:FaqIndex;
      
      private var var_1887:String = "";
      
      private var var_964:IncomingMessages;
      
      private var var_1212:CallForHelpData;
      
      public function HabboHelp(param1:IContext, param2:uint = 0, param3:IAssetLibrary = null)
      {
         var_1212 = new CallForHelpData();
         var_1888 = new UserRegistry();
         super(param1,param2,param3);
         _assetLibrary = param3;
         var_810 = new FaqIndex();
         queueInterface(new IIDHabboWindowManager(),onWindowManagerReady);
      }
      
      public function get toolbar() : IHabboToolbar
      {
         return var_188;
      }
      
      public function tellUI(param1:String, param2:* = null) : void
      {
         if(var_56 != null)
         {
            var_56.tellUI(param1,param2);
         }
      }
      
      private function toggleHelpUI() : void
      {
         if(var_56 == null)
         {
            if(!createHelpUI())
            {
               return;
            }
         }
         var_56.toggleUI();
      }
      
      private function removeTutorialUI() : void
      {
         if(var_129 != null)
         {
            var_129.dispose();
            var_129 = null;
         }
      }
      
      public function get ownUserName() : String
      {
         return var_1887;
      }
      
      public function get windowManager() : IHabboWindowManager
      {
         return _windowManager;
      }
      
      public function reportUser(param1:int, param2:String) : void
      {
         var_1212.reportedUserId = param1;
         var_1212.reportedUserName = param2;
         var_56.showUI(HabboHelpViewEnum.const_305);
      }
      
      public function get localization() : IHabboLocalizationManager
      {
         return var_675;
      }
      
      private function onRoomSessionEvent(param1:RoomSessionEvent) : void
      {
         switch(param1.type)
         {
            case RoomSessionEvent.const_90:
               if(var_56 != null)
               {
                  var_56.setRoomSessionStatus(true);
               }
               if(var_129 != null)
               {
                  var_129.setRoomSessionStatus(true);
               }
               break;
            case RoomSessionEvent.const_95:
               if(var_56 != null)
               {
                  var_56.setRoomSessionStatus(false);
               }
               if(var_129 != null)
               {
                  var_129.setRoomSessionStatus(false);
               }
               userRegistry.unregisterRoom();
         }
      }
      
      public function enableCallForGuideBotUI() : void
      {
         if(var_56 != null)
         {
            var_56.updateCallForGuideBotUI(true);
         }
      }
      
      public function get userRegistry() : UserRegistry
      {
         return var_1888;
      }
      
      public function showCallForHelpResult(param1:String) : void
      {
         if(var_56 != null)
         {
            var_56.showCallForHelpResult(param1);
         }
      }
      
      override public function dispose() : void
      {
         if(var_56 != null)
         {
            var_56.dispose();
            var_56 = null;
         }
         if(var_129 != null)
         {
            var_129.dispose();
            var_129 = null;
         }
         if(var_810 != null)
         {
            var_810.dispose();
            var_810 = null;
         }
         var_964 = null;
         if(var_188)
         {
            var_188.release(new IIDHabboToolbar());
            var_188 = null;
         }
         if(var_675)
         {
            var_675.release(new IIDHabboLocalizationManager());
            var_675 = null;
         }
         if(var_292)
         {
            var_292.release(new IIDHabboCommunicationManager());
            var_292 = null;
         }
         if(var_676)
         {
            var_676.release(new IIDHabboConfigurationManager());
            var_676 = null;
         }
         if(_windowManager)
         {
            _windowManager.release(new IIDHabboWindowManager());
            _windowManager = null;
         }
         super.dispose();
      }
      
      private function setHabboToolbarIcon() : void
      {
         if(var_188 != null)
         {
            var_188.events.dispatchEvent(new HabboToolbarSetIconEvent(HabboToolbarSetIconEvent.const_108,HabboToolbarIconEnum.HELP));
         }
      }
      
      private function createTutorialUI() : Boolean
      {
         if(var_129 == null && _assetLibrary != null && _windowManager != null)
         {
            var_129 = new TutorialUI(this);
         }
         return var_129 != null;
      }
      
      private function createHelpUI() : Boolean
      {
         if(var_56 == null && _assetLibrary != null && _windowManager != null)
         {
            var_56 = new HelpUI(this,_assetLibrary,_windowManager,var_675,var_188);
         }
         return var_56 != null;
      }
      
      public function set ownUserName(param1:String) : void
      {
         var_1887 = param1;
      }
      
      public function get callForHelpData() : CallForHelpData
      {
         return var_1212;
      }
      
      private function onWindowManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         _windowManager = IHabboWindowManager(param2);
         queueInterface(new IIDHabboCommunicationManager(),onCommunicationManagerReady);
      }
      
      private function onLocalizationManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         var_675 = IHabboLocalizationManager(param2);
         queueInterface(new IIDHabboConfigurationManager(),onConfigurationManagerReady);
      }
      
      public function updateTutorial(param1:Boolean, param2:Boolean, param3:Boolean) : void
      {
         if(param1 && param2 && param3)
         {
            removeTutorialUI();
            return;
         }
         if(var_129 == null)
         {
            if(!createTutorialUI())
            {
               return;
            }
         }
         var_129.update(param1,param2,param3);
      }
      
      private function onCommunicationManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         var_292 = IHabboCommunicationManager(param2);
         var_964 = new IncomingMessages(this,var_292);
         queueInterface(new IIDHabboToolbar(),onToolbarReady);
      }
      
      public function showUI(param1:String = null) : void
      {
         if(var_56 != null)
         {
            var_56.showUI(param1);
         }
      }
      
      public function sendMessage(param1:IMessageComposer) : void
      {
         if(var_292 != null && param1 != null)
         {
            var_292.getHabboMainConnection(null).send(param1);
         }
      }
      
      public function getFaq() : FaqIndex
      {
         return var_810;
      }
      
      public function disableCallForGuideBotUI() : void
      {
         if(var_56 != null)
         {
            var_56.updateCallForGuideBotUI(false);
         }
      }
      
      public function hideUI() : void
      {
         if(var_56 != null)
         {
            var_56.hideUI();
         }
      }
      
      private function onToolbarReady(param1:IID = null, param2:IUnknown = null) : void
      {
         var_188 = IHabboToolbar(param2);
         queueInterface(new IIDHabboLocalizationManager(),onLocalizationManagerReady);
      }
      
      private function onConfigurationManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         var_676 = IHabboConfigurationManager(param2);
         queueInterface(new IIDHabboRoomSessionManager(),onRoomSessionManagerReady);
      }
      
      public function get tutorialUI() : TutorialUI
      {
         return var_129;
      }
      
      private function onHabboToolbarEvent(param1:HabboToolbarEvent) : void
      {
         if(param1.type == HabboToolbarEvent.const_82)
         {
            setHabboToolbarIcon();
            return;
         }
         if(param1.type == HabboToolbarEvent.const_54)
         {
            if(param1.iconId == HabboToolbarIconEnum.HELP)
            {
               toggleHelpUI();
               return;
            }
         }
      }
      
      private function onRoomSessionManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         var _loc3_:IRoomSessionManager = IRoomSessionManager(param2);
         _loc3_.events.addEventListener(RoomSessionEvent.const_90,onRoomSessionEvent);
         _loc3_.events.addEventListener(RoomSessionEvent.const_95,onRoomSessionEvent);
         var_188.events.addEventListener(HabboToolbarEvent.const_82,onHabboToolbarEvent);
         var_188.events.addEventListener(HabboToolbarEvent.const_54,onHabboToolbarEvent);
         createHelpUI();
         setHabboToolbarIcon();
      }
      
      public function showCallForHelpReply(param1:String) : void
      {
         if(var_56 != null)
         {
            var_56.showCallForHelpReply(param1);
         }
      }
      
      public function getConfigurationKey(param1:String, param2:String = null, param3:Dictionary = null) : String
      {
         if(var_676 == null)
         {
            return param1;
         }
         return var_676.getKey(param1,param2,param3);
      }
   }
}
