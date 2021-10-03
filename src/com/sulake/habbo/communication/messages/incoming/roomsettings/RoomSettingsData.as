package com.sulake.habbo.communication.messages.incoming.roomsettings
{
   public class RoomSettingsData
   {
      
      public static const const_356:int = 0;
      
      public static const const_120:int = 2;
      
      public static const const_153:int = 1;
      
      public static const const_654:Array = ["open","closed","password"];
       
      
      private var _name:String;
      
      private var var_1867:Boolean;
      
      private var var_1862:Boolean;
      
      private var var_1860:int;
      
      private var var_1866:Array;
      
      private var var_1864:int;
      
      private var var_1863:Boolean;
      
      private var var_1176:String;
      
      private var var_1861:int;
      
      private var var_1865:int;
      
      private var var_1234:int;
      
      private var _roomId:int;
      
      private var var_612:Array;
      
      public function RoomSettingsData()
      {
         super();
      }
      
      public function get maximumVisitors() : int
      {
         return var_1861;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         var_1861 = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function get tags() : Array
      {
         return var_612;
      }
      
      public function get allowPets() : Boolean
      {
         return var_1863;
      }
      
      public function set controllerCount(param1:int) : void
      {
         var_1864 = param1;
      }
      
      public function set roomId(param1:int) : void
      {
         _roomId = param1;
      }
      
      public function set controllers(param1:Array) : void
      {
         var_1866 = param1;
      }
      
      public function set tags(param1:Array) : void
      {
         var_612 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return var_1867;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return var_1862;
      }
      
      public function get maximumVisitorsLimit() : int
      {
         return var_1860;
      }
      
      public function get categoryId() : int
      {
         return var_1234;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         var_1863 = param1;
      }
      
      public function get controllerCount() : int
      {
         return var_1864;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get controllers() : Array
      {
         return var_1866;
      }
      
      public function set doorMode(param1:int) : void
      {
         var_1865 = param1;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         var_1867 = param1;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         var_1862 = param1;
      }
      
      public function set maximumVisitorsLimit(param1:int) : void
      {
         var_1860 = param1;
      }
      
      public function get doorMode() : int
      {
         return var_1865;
      }
      
      public function set categoryId(param1:int) : void
      {
         var_1234 = param1;
      }
      
      public function set description(param1:String) : void
      {
         var_1176 = param1;
      }
      
      public function get description() : String
      {
         return var_1176;
      }
   }
}
