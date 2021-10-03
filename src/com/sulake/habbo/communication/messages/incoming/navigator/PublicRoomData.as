package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class PublicRoomData implements IDisposable
   {
       
      
      private var var_1693:int;
      
      private var var_1822:String;
      
      private var var_1700:int;
      
      private var _disposed:Boolean;
      
      private var var_1824:int;
      
      private var var_1823:String;
      
      private var var_1320:int;
      
      public function PublicRoomData(param1:IMessageDataWrapper)
      {
         super();
         var_1823 = param1.readString();
         var_1693 = param1.readInteger();
         var_1700 = param1.readInteger();
         var_1822 = param1.readString();
         var_1824 = param1.readInteger();
         var_1320 = param1.readInteger();
      }
      
      public function get maxUsers() : int
      {
         return var_1824;
      }
      
      public function get worldId() : int
      {
         return var_1700;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
      }
      
      public function get unitPropertySet() : String
      {
         return var_1823;
      }
      
      public function get unitPort() : int
      {
         return var_1693;
      }
      
      public function get castLibs() : String
      {
         return var_1822;
      }
      
      public function get nodeId() : int
      {
         return var_1320;
      }
   }
}
