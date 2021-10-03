package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.communication.messages.incoming.navigator.FlatCategory;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomSearchResultData;
   import com.sulake.habbo.communication.messages.incoming.navigator.MsgWithRequestId;
   import com.sulake.habbo.communication.messages.incoming.navigator.OfficialRoomsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PopularRoomTagsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.parser.navigator.FavouritesMessageParser;
   import com.sulake.habbo.communication.messages.parser.navigator.NavigatorSettingsMessageParser;
   import com.sulake.habbo.communication.messages.parser.room.engine.RoomEntryInfoMessageParser;
   import com.sulake.habbo.navigator.HabboNavigator;
   import flash.utils.Dictionary;
   
   public class NavigatorData
   {
      
      private static const const_1410:int = 10;
       
      
      private var var_1456:NavigatorSettingsMessageParser;
      
      private var var_1211:int;
      
      private var var_1880:int;
      
      private var var_1881:Boolean;
      
      private var var_994:Array;
      
      private var var_808:Dictionary;
      
      private var var_995:Array;
      
      private var var_2309:int;
      
      private var var_1882:int;
      
      private var var_1729:int;
      
      private var var_1879:int;
      
      private var var_564:PublicRoomShortData;
      
      private var var_389:RoomEventData;
      
      private var var_128:MsgWithRequestId;
      
      private var var_1883:Boolean;
      
      private var _navigator:HabboNavigator;
      
      private var var_1878:Boolean;
      
      private var var_196:GuestRoomData;
      
      private var var_674:Boolean;
      
      private var _currentRoomOwner:Boolean;
      
      public function NavigatorData(param1:HabboNavigator)
      {
         var_994 = new Array();
         var_995 = new Array();
         var_808 = new Dictionary();
         super();
         _navigator = param1;
      }
      
      public function get createdFlatId() : int
      {
         return var_1880;
      }
      
      public function get eventMod() : Boolean
      {
         return var_1878;
      }
      
      public function startLoading() : void
      {
         this.var_674 = true;
      }
      
      public function isRoomFavourite(param1:int) : Boolean
      {
         return false;
      }
      
      public function set eventMod(param1:Boolean) : void
      {
         var_1878 = param1;
      }
      
      public function set roomEventData(param1:RoomEventData) : void
      {
         if(var_389 != null)
         {
            var_389.dispose();
         }
         var_389 = param1;
      }
      
      public function get popularTagsArrived() : Boolean
      {
         return var_128 != null && var_128 as PopularRoomTagsData != null;
      }
      
      public function get guestRoomSearchArrived() : Boolean
      {
         return var_128 != null && var_128 as GuestRoomSearchResultData != null;
      }
      
      public function get guestRoomSearchResults() : GuestRoomSearchResultData
      {
         return var_128 as GuestRoomSearchResultData;
      }
      
      public function get enteredGuestRoom() : GuestRoomData
      {
         return var_196;
      }
      
      public function get allCategories() : Array
      {
         return var_994;
      }
      
      public function onRoomExit() : void
      {
         if(var_389 != null)
         {
            var_389.dispose();
            var_389 = null;
         }
         if(var_564 != null)
         {
            var_564.dispose();
            var_564 = null;
         }
         if(var_196 != null)
         {
            var_196.dispose();
            var_196 = null;
         }
         _currentRoomOwner = false;
      }
      
      public function set officialRooms(param1:OfficialRoomsData) : void
      {
         disposeCurrentMsg();
         var_128 = param1;
         var_674 = false;
      }
      
      public function get settings() : NavigatorSettingsMessageParser
      {
         return var_1456;
      }
      
      public function set popularTags(param1:PopularRoomTagsData) : void
      {
         disposeCurrentMsg();
         var_128 = param1;
         var_674 = false;
      }
      
      public function onRoomEnter(param1:RoomEntryInfoMessageParser) : void
      {
         var_564 = null;
         var_196 = null;
         _currentRoomOwner = false;
         if(param1.guestRoom)
         {
            _currentRoomOwner = param1.owner;
         }
         else
         {
            var_564 = param1.publicSpace;
            var_389 = null;
         }
      }
      
      public function get currentRoomOwner() : Boolean
      {
         return _currentRoomOwner;
      }
      
      public function onFavourites(param1:FavouritesMessageParser) : void
      {
         var _loc2_:int = 0;
         this.var_2309 = param1.limit;
         this.var_1211 = param1.favouriteRoomIds.length;
         this.var_808 = new Dictionary();
         for each(_loc2_ in param1.favouriteRoomIds)
         {
            this.var_808[_loc2_] = "yes";
         }
      }
      
      public function get popularTags() : PopularRoomTagsData
      {
         return var_128 as PopularRoomTagsData;
      }
      
      public function get enteredPublicSpace() : PublicRoomShortData
      {
         return var_564;
      }
      
      public function get hotRoomPopupOpen() : Boolean
      {
         return var_1881;
      }
      
      public function set guestRoomSearchResults(param1:GuestRoomSearchResultData) : void
      {
         disposeCurrentMsg();
         var_128 = param1;
         var_674 = false;
      }
      
      public function set avatarId(param1:int) : void
      {
         var_1729 = param1;
      }
      
      public function get canEditRoomSettings() : Boolean
      {
         return var_196 != null && _currentRoomOwner;
      }
      
      public function isLoading() : Boolean
      {
         return this.var_674;
      }
      
      public function get visibleCategories() : Array
      {
         return var_995;
      }
      
      public function set categories(param1:Array) : void
      {
         var _loc2_:* = null;
         var_994 = param1;
         var_995 = new Array();
         for each(_loc2_ in var_994)
         {
            if(_loc2_.visible)
            {
               var_995.push(_loc2_);
            }
         }
      }
      
      public function get currentRoomRating() : int
      {
         return var_1882;
      }
      
      public function get publicSpaceNodeId() : int
      {
         return var_1879;
      }
      
      public function set settings(param1:NavigatorSettingsMessageParser) : void
      {
         var_1456 = param1;
      }
      
      private function disposeCurrentMsg() : void
      {
         if(var_128 == null)
         {
            return;
         }
         var_128.dispose();
         var_128 = null;
      }
      
      public function get roomEventData() : RoomEventData
      {
         return var_389;
      }
      
      public function favouriteChanged(param1:int, param2:Boolean) : void
      {
         var_808[param1] = !!param2 ? "yes" : null;
         var_1211 += !!param2 ? 1 : -1;
      }
      
      public function get officialRooms() : OfficialRoomsData
      {
         return var_128 as OfficialRoomsData;
      }
      
      public function get avatarId() : int
      {
         return var_1729;
      }
      
      public function isCurrentRoomFavourite() : Boolean
      {
         var _loc1_:int = 0;
         return false;
      }
      
      public function get officialRoomsArrived() : Boolean
      {
         return var_128 != null && var_128 as OfficialRoomsData != null;
      }
      
      public function set hotRoomPopupOpen(param1:Boolean) : void
      {
         var_1881 = param1;
      }
      
      public function set currentRoomRating(param1:int) : void
      {
         var_1882 = param1;
      }
      
      public function set hcMember(param1:Boolean) : void
      {
         var_1883 = param1;
      }
      
      public function set enteredRoom(param1:GuestRoomData) : void
      {
         if(var_196 != null)
         {
            var_196.dispose();
         }
         var_196 = param1;
      }
      
      public function isCurrentRoomHome() : Boolean
      {
         if(var_196 == null)
         {
            return false;
         }
         var _loc1_:int = 0;
         return this.var_1456.homeRoomId == _loc1_;
      }
      
      public function isFavouritesFull() : Boolean
      {
         return var_1211 >= var_2309;
      }
      
      public function set publicSpaceNodeId(param1:int) : void
      {
         var_1879 = param1;
      }
      
      public function get hcMember() : Boolean
      {
         return var_1883;
      }
      
      public function get canAddFavourite() : Boolean
      {
         return var_196 != null && !_currentRoomOwner;
      }
      
      public function set createdFlatId(param1:int) : void
      {
         var_1880 = param1;
      }
   }
}
