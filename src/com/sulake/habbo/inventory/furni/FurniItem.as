package com.sulake.habbo.inventory.furni
{
   import flash.display.BitmapData;
   
   public class FurniItem
   {
       
      
      private var _isSelected:Boolean = false;
      
      private var var_1727:int;
      
      private var var_1724:Boolean;
      
      private var var_2027:int;
      
      private var var_1366:String;
      
      private var var_2074:Boolean = false;
      
      private var var_1685:int;
      
      private var var_432:int;
      
      private var var_1053:String;
      
      private var var_1602:String;
      
      private var _image:BitmapData;
      
      private var _objId:int;
      
      private var var_1184:int;
      
      private var var_1726:Boolean;
      
      private var var_2075:int;
      
      public function FurniItem(param1:int, param2:String, param3:int, param4:int, param5:String, param6:Boolean, param7:Boolean, param8:int, param9:String, param10:int)
      {
         super();
         var_1727 = param1;
         var_1053 = param2;
         _objId = param3;
         var_1184 = param4;
         var_1366 = param5;
         var_1724 = param6;
         var_1726 = param7;
         var_1685 = param8;
         var_1602 = param9;
         var_2027 = param10;
         var_432 = -1;
      }
      
      public function get songId() : int
      {
         return var_2027;
      }
      
      public function get iconCallbackId() : int
      {
         return var_432;
      }
      
      public function get expiryTime() : int
      {
         return var_1685;
      }
      
      public function set prevCallbackId(param1:int) : void
      {
         var_2075 = param1;
      }
      
      public function set isLocked(param1:Boolean) : void
      {
         var_2074 = param1;
      }
      
      public function set iconCallbackId(param1:int) : void
      {
         var_432 = param1;
      }
      
      public function get isTradeable() : Boolean
      {
         return var_1726;
      }
      
      public function get slotId() : String
      {
         return var_1602;
      }
      
      public function get classId() : int
      {
         return var_1184;
      }
      
      public function get isRecyclable() : Boolean
      {
         return var_1724;
      }
      
      public function get stuffData() : String
      {
         return var_1366;
      }
      
      public function set iconImage(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function set isSelected(param1:Boolean) : void
      {
         _isSelected = param1;
      }
      
      public function get stripId() : int
      {
         return var_1727;
      }
      
      public function get isLocked() : Boolean
      {
         return var_2074;
      }
      
      public function get prevCallbackId() : int
      {
         return var_2075;
      }
      
      public function get iconImage() : BitmapData
      {
         return _image;
      }
      
      public function get isSelected() : Boolean
      {
         return _isSelected;
      }
      
      public function get objId() : int
      {
         return _objId;
      }
      
      public function get itemType() : String
      {
         return var_1053;
      }
   }
}
