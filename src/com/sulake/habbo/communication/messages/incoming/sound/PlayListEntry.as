package com.sulake.habbo.communication.messages.incoming.sound
{
   public class PlayListEntry
   {
       
      
      private var var_2027:int;
      
      private var var_2028:int = 0;
      
      private var var_2025:String;
      
      private var var_2026:int;
      
      private var var_2029:String;
      
      public function PlayListEntry(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         var_2027 = param1;
         var_2026 = param2;
         var_2029 = param3;
         var_2025 = param4;
      }
      
      public function get length() : int
      {
         return var_2026;
      }
      
      public function get name() : String
      {
         return var_2029;
      }
      
      public function get creator() : String
      {
         return var_2025;
      }
      
      public function get startPlayHeadPos() : int
      {
         return var_2028;
      }
      
      public function get id() : int
      {
         return var_2027;
      }
      
      public function set startPlayHeadPos(param1:int) : void
      {
         var_2028 = param1;
      }
   }
}
