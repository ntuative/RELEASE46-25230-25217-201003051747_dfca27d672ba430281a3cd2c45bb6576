package com.sulake.habbo.catalog.purse
{
   public class Purse implements IPurse
   {
       
      
      private var var_1781:int = 0;
      
      private var var_1780:int = 0;
      
      private var var_1782:int = 0;
      
      private var var_1779:int = 0;
      
      public function Purse()
      {
         super();
      }
      
      public function get pixels() : int
      {
         return var_1780;
      }
      
      public function set pixels(param1:int) : void
      {
         var_1780 = param1;
      }
      
      public function set clubDays(param1:int) : void
      {
         var_1781 = param1;
      }
      
      public function get credits() : int
      {
         return var_1782;
      }
      
      public function get clubDays() : int
      {
         return var_1781;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         var_1779 = param1;
      }
      
      public function set credits(param1:int) : void
      {
         var_1782 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return var_1779;
      }
   }
}
