package com.sulake.habbo.inventory.purse
{
   public class Purse
   {
       
      
      private var var_1950:Boolean = false;
      
      private var var_1951:int = 0;
      
      private var var_1781:int = 0;
      
      private var var_1952:int = 0;
      
      private var var_1536:int = 0;
      
      private var var_1779:int = 0;
      
      public function Purse()
      {
         super();
      }
      
      public function set creditBalance(param1:int) : void
      {
         var_1536 = Math.max(0,param1);
      }
      
      public function get clubPastPeriods() : int
      {
         return var_1951;
      }
      
      public function get clubHasEverBeenMember() : Boolean
      {
         return var_1950;
      }
      
      public function set clubHasEverBeenMember(param1:Boolean) : void
      {
         var_1950 = param1;
      }
      
      public function set clubPastPeriods(param1:int) : void
      {
         var_1951 = Math.max(0,param1);
      }
      
      public function set clubDays(param1:int) : void
      {
         var_1781 = Math.max(0,param1);
      }
      
      public function get creditBalance() : int
      {
         return var_1536;
      }
      
      public function set pixelBalance(param1:int) : void
      {
         var_1952 = Math.max(0,param1);
      }
      
      public function get clubDays() : int
      {
         return var_1781;
      }
      
      public function get pixelBalance() : int
      {
         return var_1952;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         var_1779 = Math.max(0,param1);
      }
      
      public function get clubPeriods() : int
      {
         return var_1779;
      }
   }
}
