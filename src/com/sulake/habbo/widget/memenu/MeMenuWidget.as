package com.sulake.habbo.widget.memenu
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.widget.RoomWidgetBase;
   import com.sulake.habbo.widget.events.RoomWidgetAvatarActionUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetAvatarEditorUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetCreditBalanceUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetDanceUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetFrameUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetHabboClubUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetRoomObjectUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetSettingsUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetToolbarClickedUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetTutorialEvent;
   import com.sulake.habbo.widget.events.RoomWidgetUpdateEffectsUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetUserInfoUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetWaveUpdateEvent;
   import com.sulake.habbo.widget.memenu.enum.HabboMeMenuTrackingEvent;
   import com.sulake.habbo.widget.messages.RoomWidgetRequestWidgetMessage;
   import com.sulake.habbo.widget.messages.RoomWidgetSelectOutfitMessage;
   import com.sulake.habbo.widget.messages.RoomWidgetToolbarMessage;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import com.sulake.habbo.window.enum.HabboWindowStyle;
   import com.sulake.habbo.window.enum.HabboWindowType;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import flash.external.ExternalInterface;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class MeMenuWidget extends RoomWidgetBase
   {
      
      public static const const_725:String = "me_menu_settings_view";
      
      private static const const_771:int = 10;
      
      public static const const_680:String = "me_menu_effects_view";
      
      public static const const_111:String = "me_menu_top_view";
      
      public static const const_1230:String = "me_menu_rooms_view";
      
      public static const const_869:String = "me_menu_dance_moves_view";
      
      public static const const_248:String = "me_menu_my_clothes_view";
       
      
      private var var_2105:Boolean = false;
      
      private var _isAnimating:Boolean = false;
      
      private var _eventDispatcher:IEventDispatcher;
      
      private var var_1536:int = 0;
      
      private var var_2103:int = 0;
      
      private var var_2104:Boolean = false;
      
      private var var_272:Boolean = false;
      
      private var var_2107:int = 0;
      
      private var var_2106:Number = 0;
      
      private var _mainContainer:IWindowContainer;
      
      private var var_589:Boolean = false;
      
      private var var_95:ClubPromoView;
      
      private var _config:IHabboConfigurationManager;
      
      private var var_1299:int = 0;
      
      private var var_2102:Boolean = false;
      
      private var var_1044:Point;
      
      private var var_28:IMeMenuView;
      
      public function MeMenuWidget(param1:IHabboWindowManager, param2:IAssetLibrary, param3:IHabboLocalizationManager, param4:IEventDispatcher, param5:IHabboConfigurationManager)
      {
         super(param1,param2,param3);
         _config = param5;
         var_1044 = new Point(0,0);
         _eventDispatcher = param4;
         if(param5 != null && false)
         {
            var_2102 = param5.getKey("client.news.embed.enabled","false") == "true";
         }
         changeView(const_111);
         hide();
      }
      
      override public function registerUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.addEventListener(RoomWidgetWaveUpdateEvent.const_555,onWaveEvent);
         param1.addEventListener(RoomWidgetDanceUpdateEvent.const_678,onDanceEvent);
         param1.addEventListener(RoomWidgetUpdateEffectsUpdateEvent.const_733,onUpdateEffects);
         param1.addEventListener(RoomWidgetToolbarClickedUpdateEvent.const_694,onToolbarClicked);
         param1.addEventListener(RoomWidgetFrameUpdateEvent.const_311,onUpdate);
         param1.addEventListener(RoomWidgetAvatarEditorUpdateEvent.const_629,onAvatarEditorClosed);
         param1.addEventListener(RoomWidgetAvatarEditorUpdateEvent.const_466,onShowAvatarEditorClubPromo);
         param1.addEventListener(RoomWidgetAvatarEditorUpdateEvent.const_924,onHideAvatarEditorClubPromo);
         param1.addEventListener(RoomWidgetRoomObjectUpdateEvent.const_197,onAvatarDeselected);
         param1.addEventListener(RoomWidgetHabboClubUpdateEvent.const_186,onHabboClubEvent);
         param1.addEventListener(RoomWidgetAvatarActionUpdateEvent.const_505,onAvatarActionEvent);
         param1.addEventListener(RoomWidgetUserInfoUpdateEvent.const_219,onUserInfo);
         param1.addEventListener(RoomWidgetSettingsUpdateEvent.const_324,onSettingsUpdate);
         param1.addEventListener(RoomWidgetTutorialEvent.const_98,onTutorialEvent);
         param1.addEventListener(RoomWidgetTutorialEvent.const_383,onTutorialEvent);
         param1.addEventListener(RoomWidgetCreditBalanceUpdateEvent.const_173,onCreditBalance);
         super.registerUpdateEvents(param1);
      }
      
      private function onUpdate(param1:Event = null) : void
      {
         if(!_isAnimating)
         {
            return;
         }
      }
      
      override public function get mainWindow() : IWindow
      {
         return _mainContainer;
      }
      
      public function get hasEffectOn() : Boolean
      {
         return var_589;
      }
      
      private function onSettingsUpdate(param1:RoomWidgetSettingsUpdateEvent) : void
      {
         if(!var_272)
         {
            return;
         }
         if(var_28.window.name == const_725)
         {
            (var_28 as MeMenuSettingsView).updateSettings(param1);
         }
      }
      
      public function get isHabboClubActive() : Boolean
      {
         return var_1299 > 0;
      }
      
      private function onWaveEvent(param1:RoomWidgetWaveUpdateEvent) : void
      {
         Logger.log("[MeMenuWidget] Wave Event received");
      }
      
      private function onCreditBalance(param1:RoomWidgetCreditBalanceUpdateEvent) : void
      {
         if(param1 == null)
         {
            return;
         }
         var_1536 = param1.balance;
         localizations.registerParameter("widget.memenu.credits","credits",var_1536.toString());
      }
      
      private function onUserInfo(param1:RoomWidgetUserInfoUpdateEvent) : void
      {
         var _loc2_:* = null;
         if(!(var_272 && var_28.window.name == const_248))
         {
            _loc2_ = new RoomWidgetRequestWidgetMessage(RoomWidgetRequestWidgetMessage.const_710);
            if(messageListener != null)
            {
               messageListener.processWidgetMessage(_loc2_);
            }
         }
      }
      
      override public function unregisterUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.removeEventListener(RoomWidgetWaveUpdateEvent.const_555,onWaveEvent);
         param1.removeEventListener(RoomWidgetDanceUpdateEvent.const_678,onDanceEvent);
         param1.removeEventListener(RoomWidgetUpdateEffectsUpdateEvent.const_733,onUpdateEffects);
         param1.removeEventListener(RoomWidgetToolbarClickedUpdateEvent.const_694,onToolbarClicked);
         param1.removeEventListener(RoomWidgetFrameUpdateEvent.const_311,onUpdate);
         param1.removeEventListener(RoomWidgetRoomObjectUpdateEvent.const_197,onAvatarDeselected);
         param1.removeEventListener(RoomWidgetHabboClubUpdateEvent.const_186,onHabboClubEvent);
         param1.removeEventListener(RoomWidgetAvatarActionUpdateEvent.const_505,onAvatarActionEvent);
         param1.removeEventListener(RoomWidgetAvatarEditorUpdateEvent.const_629,onAvatarEditorClosed);
         param1.removeEventListener(RoomWidgetAvatarEditorUpdateEvent.const_466,onShowAvatarEditorClubPromo);
         param1.removeEventListener(RoomWidgetAvatarEditorUpdateEvent.const_924,onHideAvatarEditorClubPromo);
         param1.removeEventListener(RoomWidgetUserInfoUpdateEvent.const_219,onUserInfo);
         param1.removeEventListener(RoomWidgetSettingsUpdateEvent.const_324,onSettingsUpdate);
         param1.removeEventListener(RoomWidgetTutorialEvent.const_383,onTutorialEvent);
         param1.removeEventListener(RoomWidgetTutorialEvent.const_98,onTutorialEvent);
         param1.removeEventListener(RoomWidgetCreditBalanceUpdateEvent.const_173,onCreditBalance);
      }
      
      override public function dispose() : void
      {
         hide();
         _eventDispatcher = null;
         if(var_28 != null)
         {
            var_28.dispose();
            var_28 = null;
         }
         super.dispose();
      }
      
      public function get allowHabboClubDances() : Boolean
      {
         return var_2105;
      }
      
      public function changeToOutfit(param1:int) : void
      {
         var_2106 = new Date().valueOf();
         this.messageListener.processWidgetMessage(new RoomWidgetSelectOutfitMessage(param1));
      }
      
      private function onHideAvatarEditorClubPromo(param1:RoomWidgetAvatarEditorUpdateEvent) : void
      {
         if(var_95 != null)
         {
            var_95.dispose();
            var_95 = null;
         }
         updateSize();
      }
      
      public function get isDancing() : Boolean
      {
         return var_2104;
      }
      
      public function get creditBalance() : int
      {
         return var_1536;
      }
      
      private function onTutorialEvent(param1:RoomWidgetTutorialEvent) : void
      {
         switch(param1.type)
         {
            case RoomWidgetTutorialEvent.const_383:
               Logger.log("* MeMenuWidget: onHighlightClothesIcon " + var_272 + " view: " + var_28.window.name);
               if(var_272 != true || var_28.window.name != const_111)
               {
                  return;
               }
               (var_28 as MeMenuMainView).setIconAssets("clothes_icon",const_111,"clothes_highlighter_blue");
               break;
            case RoomWidgetTutorialEvent.const_98:
               hide();
         }
      }
      
      public function canChangeOutfit() : Boolean
      {
         var _loc1_:Number = new Date().valueOf();
         return _loc1_ - var_2106 > 5000;
      }
      
      public function get habboClubPeriods() : int
      {
         return var_2103;
      }
      
      private function onAvatarActionEvent(param1:RoomWidgetAvatarActionUpdateEvent) : void
      {
         switch(param1.actionType)
         {
            case RoomWidgetAvatarActionUpdateEvent.EFFECT_ACTIVE:
               var_589 = true;
               break;
            case RoomWidgetAvatarActionUpdateEvent.EFFECT_INACTIVE:
               var_589 = false;
               break;
            default:
               trace("MeMenuWidget: unknown avatar action event: " + param1.actionType);
         }
      }
      
      private function onHabboClubEvent(param1:RoomWidgetHabboClubUpdateEvent) : void
      {
         var _loc2_:* = var_1299 > 0;
         var_1299 = param1.daysLeft;
         var_2103 = param1.periodsLeft;
         var_2107 = param1.pastPeriods;
         var_2105 = param1.allowClubDances;
         if(_loc2_ != param1.daysLeft > 0)
         {
            if(var_28 != null)
            {
               changeView(var_28.window.name);
            }
         }
      }
      
      public function set isDancing(param1:Boolean) : void
      {
         var_2104 = param1;
      }
      
      private function onAvatarDeselected(param1:Event) : void
      {
         if(var_28 != null && var_28.window.name != const_248)
         {
            hide();
         }
      }
      
      private function onShowAvatarEditorClubPromo(param1:RoomWidgetAvatarEditorUpdateEvent) : void
      {
         var _loc2_:* = null;
         if(var_28 != null && var_28.window.name == const_248)
         {
            if(param1.promoMode == RoomWidgetAvatarEditorUpdateEvent.const_908)
            {
               var_95 = new ClubPromoView(this,param1.promoImageUrl,ClubPromoView.const_1379);
            }
            else
            {
               var_95 = new ClubPromoView(this,param1.promoImageUrl,ClubPromoView.const_359);
            }
            _loc2_ = _mainContainer.getChildByName(var_28.window.name);
            if(_loc2_ != null)
            {
               var_95.window.x = _loc2_.width + const_771;
               _mainContainer.addChild(var_95.window);
               _mainContainer.width = var_95.window.x + var_95.window.width;
            }
         }
      }
      
      private function onUpdateEffects(param1:RoomWidgetUpdateEffectsUpdateEvent) : void
      {
         var _loc2_:* = null;
         var_589 = false;
         for each(_loc2_ in param1.effects)
         {
            if(_loc2_.isInUse)
            {
               var_589 = true;
            }
         }
         if(var_28 != null && var_28.window.name == const_680)
         {
            (var_28 as MeMenuEffectsView).updateEffects(param1.effects);
         }
      }
      
      public function get habboClubPastPeriods() : int
      {
         return var_2107;
      }
      
      public function get habboClubDays() : int
      {
         return var_1299;
      }
      
      public function get mainContainer() : IWindowContainer
      {
         if(_mainContainer == null)
         {
            _mainContainer = windowManager.createWindow("me_menu_main_container","",HabboWindowType.const_1203,HabboWindowStyle.const_989,HabboWindowParam.const_39,new Rectangle(0,0,170,260)) as IWindowContainer;
            _mainContainer.tags.push("room_widget_me_menu");
         }
         return _mainContainer;
      }
      
      private function onToolbarClicked(param1:RoomWidgetToolbarClickedUpdateEvent) : void
      {
         switch(param1.iconType)
         {
            case RoomWidgetToolbarClickedUpdateEvent.ICON_TYPE_ME_MENU:
               var_272 = !var_272;
               break;
            case RoomWidgetToolbarClickedUpdateEvent.ICON_TYPE_ROOM_INFO:
               var_272 = false;
               break;
            default:
               return;
         }
         if(var_272)
         {
            show();
         }
         else
         {
            hide();
         }
      }
      
      private function onDanceEvent(param1:RoomWidgetDanceUpdateEvent) : void
      {
         Logger.log("[MeMenuWidget] Dance Event received, style: " + param1.style);
      }
      
      public function hide(param1:RoomWidgetRoomObjectUpdateEvent = null) : void
      {
         var _loc2_:RoomWidgetToolbarMessage = new RoomWidgetToolbarMessage(RoomWidgetToolbarMessage.const_641);
         _loc2_.window = _mainContainer.parent as IWindowContainer;
         if(messageListener != null)
         {
            messageListener.processWidgetMessage(_loc2_);
         }
         if(var_28 != null)
         {
            _mainContainer.removeChild(var_28.window);
            var_28.dispose();
            var_28 = null;
         }
         var_272 = false;
         _eventDispatcher.dispatchEvent(new Event(HabboMeMenuTrackingEvent.HABBO_MEMENU_TRACKING_EVENT_CLOSE));
      }
      
      private function onAvatarEditorClosed(param1:RoomWidgetAvatarEditorUpdateEvent) : void
      {
         if(var_28 != null && var_28.window.name == const_248)
         {
            if(var_95 != null)
            {
               var_95.dispose();
               var_95 = null;
            }
            changeView(const_111);
         }
      }
      
      public function get isNewsEnabled() : Boolean
      {
         return var_2102;
      }
      
      public function changeView(param1:String) : void
      {
         var _loc2_:* = null;
         if(var_95 != null)
         {
            var_95.dispose();
            var_95 = null;
         }
         switch(param1)
         {
            case const_111:
               _loc2_ = new MeMenuMainView();
               _eventDispatcher.dispatchEvent(new Event(HabboMeMenuTrackingEvent.HABBO_MEMENU_TRACKING_EVENT_DEFAULT));
               break;
            case const_680:
               _loc2_ = new MeMenuEffectsView();
               _eventDispatcher.dispatchEvent(new Event(HabboMeMenuTrackingEvent.HABBO_MEMENU_TRACKING_EVENT_EFFECTS));
               break;
            case const_869:
               _loc2_ = new MeMenuDanceView();
               _eventDispatcher.dispatchEvent(new Event(HabboMeMenuTrackingEvent.HABBO_MEMENU_TRACKING_EVENT_DANCE));
               break;
            case const_248:
               _loc2_ = new MeMenuClothesView();
               break;
            case const_1230:
               _loc2_ = new MeMenuRoomsView();
               break;
            case const_725:
               _loc2_ = new MeMenuSettingsView();
               break;
            default:
               Logger.log("Me Menu Change view: unknown view: " + param1);
         }
         if(_loc2_ != null)
         {
            if(var_28 != null)
            {
               _mainContainer.removeChild(var_28.window);
               var_28.dispose();
               var_28 = null;
            }
            var_28 = _loc2_;
            var_28.init(this,param1);
         }
         updateSize();
      }
      
      public function updateSize() : void
      {
         if(var_28 != null)
         {
            var_1044.x = var_28.window.width + 10;
            var_1044.y = var_28.window.height;
            var_28.window.x = 5;
            var_28.window.y = 0;
            _mainContainer.width = var_1044.x;
            _mainContainer.height = var_1044.y;
            if(var_95 != null)
            {
               _mainContainer.width = var_95.window.x + var_95.window.width + const_771;
            }
         }
      }
      
      public function get config() : IHabboConfigurationManager
      {
         return _config;
      }
      
      private function show() : void
      {
         if(!_mainContainer || true)
         {
            return;
         }
         changeView(const_111);
         var _loc1_:RoomWidgetToolbarMessage = new RoomWidgetToolbarMessage(RoomWidgetToolbarMessage.const_586);
         _loc1_.window = _mainContainer.parent as IWindowContainer;
         if(messageListener != null)
         {
            messageListener.processWidgetMessage(_loc1_);
         }
         var_272 = true;
      }
   }
}
