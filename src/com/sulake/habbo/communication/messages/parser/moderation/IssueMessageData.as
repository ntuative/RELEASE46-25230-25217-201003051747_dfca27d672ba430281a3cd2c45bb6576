package com.sulake.habbo.communication.messages.parser.moderation
{
   import flash.utils.getTimer;
   
   public class IssueMessageData
   {
      
      public static const const_141:int = 1;
      
      public static const const_1342:int = 3;
      
      public static const const_476:int = 2;
       
      
      private var var_1702:int;
      
      private var var_1693:int;
      
      private var var_1701:int;
      
      private var var_1700:int;
      
      private var var_34:int;
      
      private var var_415:int;
      
      private var var_1240:int;
      
      private var var_1697:int;
      
      private var var_1001:int;
      
      private var _roomResources:String;
      
      private var var_1692:int;
      
      private var var_1695:int;
      
      private var var_1694:String;
      
      private var var_1703:String;
      
      private var var_1704:int = 0;
      
      private var var_1229:String;
      
      private var _message:String;
      
      private var var_1698:int;
      
      private var var_1699:String;
      
      private var var_1234:int;
      
      private var var_632:String;
      
      private var var_1696:String;
      
      private var var_1399:int;
      
      public function IssueMessageData()
      {
         super();
      }
      
      public function set reportedUserId(param1:int) : void
      {
         var_1001 = param1;
      }
      
      public function set temporalPriority(param1:int) : void
      {
         var_1704 = param1;
      }
      
      public function get reporterUserId() : int
      {
         return var_1695;
      }
      
      public function set roomName(param1:String) : void
      {
         var_632 = param1;
      }
      
      public function set chatRecordId(param1:int) : void
      {
         var_1692 = param1;
      }
      
      public function get state() : int
      {
         return var_34;
      }
      
      public function get roomResources() : String
      {
         return _roomResources;
      }
      
      public function set roomResources(param1:String) : void
      {
         _roomResources = param1;
      }
      
      public function get roomName() : String
      {
         return var_632;
      }
      
      public function get message() : String
      {
         return _message;
      }
      
      public function set worldId(param1:int) : void
      {
         var_1700 = param1;
      }
      
      public function set state(param1:int) : void
      {
         var_34 = param1;
      }
      
      public function get unitPort() : int
      {
         return var_1693;
      }
      
      public function get priority() : int
      {
         return var_1702 + var_1704;
      }
      
      public function set issueId(param1:int) : void
      {
         var_1697 = param1;
      }
      
      public function get pickerUserName() : String
      {
         return var_1703;
      }
      
      public function getOpenTime() : String
      {
         var _loc1_:int = (getTimer() - var_1399) / 1000;
         var _loc2_:int = _loc1_ % 60;
         var _loc3_:int = _loc1_ / 60;
         var _loc4_:int = _loc3_ % 60;
         var _loc5_:int = _loc3_ / 60;
         var _loc6_:String = _loc2_ < 10 ? "0" + _loc2_ : "" + _loc2_;
         var _loc7_:String = _loc4_ < 10 ? "0" + _loc4_ : "" + _loc4_;
         var _loc8_:String = _loc5_ < 10 ? "0" + _loc5_ : "" + _loc5_;
         return _loc8_ + ":" + _loc7_ + ":" + _loc6_;
      }
      
      public function get categoryId() : int
      {
         return var_1234;
      }
      
      public function set reporterUserId(param1:int) : void
      {
         var_1695 = param1;
      }
      
      public function get roomType() : int
      {
         return var_1240;
      }
      
      public function set flatType(param1:String) : void
      {
         var_1694 = param1;
      }
      
      public function get chatRecordId() : int
      {
         return var_1692;
      }
      
      public function set message(param1:String) : void
      {
         _message = param1;
      }
      
      public function get worldId() : int
      {
         return var_1700;
      }
      
      public function set flatOwnerName(param1:String) : void
      {
         var_1696 = param1;
      }
      
      public function set reportedUserName(param1:String) : void
      {
         var_1229 = param1;
      }
      
      public function get issueId() : int
      {
         return var_1697;
      }
      
      public function set priority(param1:int) : void
      {
         var_1702 = param1;
      }
      
      public function set unitPort(param1:int) : void
      {
         var_1693 = param1;
      }
      
      public function get flatType() : String
      {
         return var_1694;
      }
      
      public function set reportedCategoryId(param1:int) : void
      {
         var_1701 = param1;
      }
      
      public function set pickerUserName(param1:String) : void
      {
         var_1703 = param1;
      }
      
      public function set pickerUserId(param1:int) : void
      {
         var_1698 = param1;
      }
      
      public function get reportedUserName() : String
      {
         return var_1229;
      }
      
      public function set roomType(param1:int) : void
      {
         var_1240 = param1;
      }
      
      public function get reportedCategoryId() : int
      {
         return var_1701;
      }
      
      public function set flatId(param1:int) : void
      {
         var_415 = param1;
      }
      
      public function set categoryId(param1:int) : void
      {
         var_1234 = param1;
      }
      
      public function set timeStamp(param1:int) : void
      {
         var_1399 = param1;
      }
      
      public function get pickerUserId() : int
      {
         return var_1698;
      }
      
      public function set reporterUserName(param1:String) : void
      {
         var_1699 = param1;
      }
      
      public function get timeStamp() : int
      {
         return var_1399;
      }
      
      public function get reportedUserId() : int
      {
         return var_1001;
      }
      
      public function get flatId() : int
      {
         return var_415;
      }
      
      public function get flatOwnerName() : String
      {
         return var_1696;
      }
      
      public function get reporterUserName() : String
      {
         return var_1699;
      }
   }
}
