package com.sulake.habbo.friendlist
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IFrameWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.friendlist.events.HabboFriendListTrackingEvent;
   import com.sulake.habbo.toolbar.HabboToolbarIconEnum;
   import com.sulake.habbo.toolbar.events.HabboToolbarShowMenuEvent;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import flash.utils.Dictionary;
   
   public class FriendListView
   {
      
      private static const const_1401:String = "noconvinfo";
      
      private static const const_1402:String = "messageinput";
       
      
      private var var_1419:int = -1;
      
      private var var_796:IWindowContainer;
      
      private var _friendList:HabboFriendList;
      
      private var var_1420:int = -1;
      
      private var var_1149:ITextWindow;
      
      private var var_1150:FriendListTabsView;
      
      private var var_12:IFrameWindow;
      
      private var var_252:IWindowContainer;
      
      private var var_1737:Boolean;
      
      public function FriendListView(param1:HabboFriendList)
      {
         super();
         _friendList = param1;
         var_1150 = new FriendListTabsView(_friendList);
      }
      
      private function prepare() : void
      {
         var_12 = IFrameWindow(_friendList.getXmlWindow("main_window"));
         var_12.findChildByTag("close").procedure = onWindowClose;
         var_796 = IWindowContainer(var_12.content.findChildByName("main_content"));
         var_252 = IWindowContainer(var_12.content.findChildByName("footer"));
         var_1150.prepare(var_796);
         var_12.procedure = onWindow;
         var_12.content.setParamFlag(HabboWindowParam.const_831,false);
         var_12.content.setParamFlag(HabboWindowParam.const_1263,true);
         var_12.header.setParamFlag(HabboWindowParam.const_543,false);
         var_12.header.setParamFlag(HabboWindowParam.const_821,true);
         var_12.content.setParamFlag(HabboWindowParam.const_543,false);
         var_12.content.setParamFlag(HabboWindowParam.const_821,true);
         var_12.findChildByName("open_edit_ctgs_but").procedure = onEditCategoriesButtonClick;
         var_1149 = ITextWindow(var_12.findChildByName("info_text"));
         var_1149.text = "";
         _friendList.refreshButton(var_12,"open_edit_ctgs",true,null,0);
         var_12.title.color = 4294623744;
         var_12.title.textColor = 4287851525;
         refresh("prepare");
         var_12.height = 350;
         var_12.width = 230;
      }
      
      private function onWindowClose(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         Logger.log("Close window");
         var_12.visible = false;
         _friendList.trackFriendListEvent(HabboFriendListTrackingEvent.HABBO_FRIENDLIST_TRACKIG_EVENT_CLOSED);
      }
      
      public function showInfo(param1:WindowEvent, param2:String) : void
      {
         var _loc3_:WindowMouseEvent = param1 as WindowMouseEvent;
         if(_loc3_ == null)
         {
            return;
         }
         if(_loc3_.type == WindowMouseEvent.const_27)
         {
            var_1149.text = "";
         }
         else if(_loc3_.type == WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER)
         {
            var_1149.text = param2;
         }
      }
      
      public function openFriendList() : void
      {
         if(var_12 == null)
         {
            prepare();
            _friendList.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_46,HabboToolbarIconEnum.FRIENDLIST,var_12));
         }
         else
         {
            var_12.visible = true;
            var_12.activate();
         }
      }
      
      private function getTitleBar() : IWindowContainer
      {
         return var_12.findChildByName("titlebar") as IWindowContainer;
      }
      
      public function get tabsView() : FriendListTabsView
      {
         return var_1150;
      }
      
      private function refreshWindowSize() : void
      {
         this.var_1737 = true;
         var_252.visible = false;
         var_252.y = Util.getLowestPoint(var_12.content);
         var_252.width = _friendList.tabs.windowWidth;
         var_252.visible = true;
         var_12.content.height = Util.getLowestPoint(var_12.content);
         var_12.content.width = _friendList.tabs.windowWidth - 10;
         var_12.header.width = _friendList.tabs.windowWidth - 10;
         var_12.height = var_12.content.height + 30;
         var_12.width = _friendList.tabs.windowWidth;
         this.var_1737 = false;
         var_12.scaler.setParamFlag(HabboWindowParam.const_608,false);
         var_12.scaler.setParamFlag(HabboWindowParam.const_961,this._friendList.tabs.findSelectedTab() != null);
         var_12.scaler.setParamFlag(HabboWindowParam.const_543,false);
         var_12.scaler.setParamFlag(HabboWindowParam.const_831,false);
         var_12.scaler.x = 0 - var_12.scaler.width;
         var_12.scaler.y = 0 - var_12.scaler.height;
         var_1420 = var_12.height;
         var_1419 = var_12.width;
         Logger.log("RESIZED: " + _friendList.tabs.windowWidth);
      }
      
      public function isFriendListOpen() : Boolean
      {
         return var_12 != null && false;
      }
      
      public function refresh(param1:String) : void
      {
         if(this.var_12 == null)
         {
            return;
         }
         var_1150.refresh(param1);
         refreshWindowSize();
      }
      
      public function get mainWindow() : IWindowContainer
      {
         return var_12;
      }
      
      private function onWindow(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowEvent.const_43 || param2 != var_12)
         {
            return;
         }
         if(this.var_1737)
         {
            return;
         }
         var _loc3_:int = var_1420 == -1 ? 0 : int(0 - var_1420);
         var _loc4_:int = var_1419 == -1 ? 0 : int(0 - var_1419);
         _friendList.tabs.tabContentHeight = Math.max(100,_friendList.tabs.tabContentHeight + _loc3_);
         _friendList.tabs.windowWidth = Math.max(147,_friendList.tabs.windowWidth + _loc4_);
         refresh("resize: " + _loc3_);
      }
      
      private function onEditCategoriesButtonClick(param1:WindowEvent, param2:IWindow) : void
      {
         _friendList.view.showInfo(param1,"${friendlist.tip.preferences}");
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         Logger.log("Edit categories clicked");
         var _loc3_:WindowMouseEvent = param1 as WindowMouseEvent;
         _friendList.openHabboWebPage("link.format.friendlist.pref",new Dictionary(),_loc3_.stageX,_loc3_.stageY);
      }
      
      public function close() : void
      {
         if(this.var_12 != null)
         {
            this.var_12.visible = false;
         }
      }
   }
}
