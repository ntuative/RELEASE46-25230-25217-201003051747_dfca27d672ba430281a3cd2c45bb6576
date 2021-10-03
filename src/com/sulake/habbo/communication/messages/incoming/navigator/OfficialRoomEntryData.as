package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_1269:int = 4;
      
      public static const const_675:int = 3;
      
      public static const const_664:int = 2;
      
      public static const const_838:int = 1;
       
      
      private var var_2085:String;
      
      private var _disposed:Boolean;
      
      private var var_1804:int;
      
      private var var_2084:Boolean;
      
      private var var_769:String;
      
      private var var_875:PublicRoomData;
      
      private var var_2083:int;
      
      private var _index:int;
      
      private var var_2086:String;
      
      private var _type:int;
      
      private var var_1636:String;
      
      private var var_874:GuestRoomData;
      
      private var var_2087:String;
      
      private var _open:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         _index = param1.readInteger();
         var_2085 = param1.readString();
         var_2087 = param1.readString();
         var_2084 = param1.readInteger() == 1;
         var_2086 = param1.readString();
         var_769 = param1.readString();
         var_2083 = param1.readInteger();
         var_1804 = param1.readInteger();
         _type = param1.readInteger();
         if(_type == const_838)
         {
            var_1636 = param1.readString();
         }
         else if(_type == const_675)
         {
            var_875 = new PublicRoomData(param1);
         }
         else if(_type == const_664)
         {
            var_874 = new GuestRoomData(param1);
         }
      }
      
      public function get folderId() : int
      {
         return var_2083;
      }
      
      public function get popupCaption() : String
      {
         return var_2085;
      }
      
      public function get userCount() : int
      {
         return var_1804;
      }
      
      public function get open() : Boolean
      {
         return _open;
      }
      
      public function get showDetails() : Boolean
      {
         return var_2084;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_838)
         {
            return 0;
         }
         if(this.type == const_664)
         {
            return this.var_874.maxUserCount;
         }
         if(this.type == const_675)
         {
            return this.var_875.maxUsers;
         }
         return 0;
      }
      
      public function get popupDesc() : String
      {
         return var_2087;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         if(this.var_874 != null)
         {
            this.var_874.dispose();
            this.var_874 = null;
         }
         if(this.var_875 != null)
         {
            this.var_875.dispose();
            this.var_875 = null;
         }
      }
      
      public function get index() : int
      {
         return _index;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return var_874;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get picText() : String
      {
         return var_2086;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return var_875;
      }
      
      public function get picRef() : String
      {
         return var_769;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get tag() : String
      {
         return var_1636;
      }
      
      public function toggleOpen() : void
      {
         _open = !_open;
      }
   }
}
