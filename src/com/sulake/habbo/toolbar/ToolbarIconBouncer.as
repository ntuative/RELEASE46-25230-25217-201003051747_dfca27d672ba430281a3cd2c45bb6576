package com.sulake.habbo.toolbar
{
   public class ToolbarIconBouncer
   {
       
      
      private var var_1654:Number;
      
      private var var_537:Number = 0;
      
      private var var_1655:Number;
      
      private var var_538:Number;
      
      public function ToolbarIconBouncer(param1:Number, param2:Number)
      {
         super();
         var_1654 = param1;
         var_1655 = param2;
      }
      
      public function update() : void
      {
         var_538 += var_1655;
         var_537 += var_538;
         if(var_537 > 0)
         {
            var_537 = 0;
            var_538 = var_1654 * -1 * var_538;
         }
      }
      
      public function reset(param1:int) : void
      {
         var_538 = param1;
         var_537 = 0;
      }
      
      public function get location() : Number
      {
         return var_537;
      }
   }
}
