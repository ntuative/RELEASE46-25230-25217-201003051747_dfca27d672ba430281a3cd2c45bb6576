package com.sulake.habbo.avatar.animation
{
   public class AddDataContainer
   {
       
      
      private var var_1384:String;
      
      private var var_1580:String;
      
      private var var_1020:String;
      
      private var var_421:Number = 1;
      
      private var _id:String;
      
      public function AddDataContainer(param1:XML)
      {
         super();
         _id = String(param1.@id);
         var_1384 = String(param1.@align);
         var_1020 = String(param1.@base);
         var_1580 = String(param1.@ink);
         var _loc2_:String = String(param1.@blend);
         if(_loc2_.length > 0)
         {
            var_421 = Number(_loc2_);
            if(var_421 > 1)
            {
               var_421 /= 100;
            }
         }
      }
      
      public function get align() : String
      {
         return var_1384;
      }
      
      public function get ink() : String
      {
         return var_1580;
      }
      
      public function get base() : String
      {
         return var_1020;
      }
      
      public function get isBlended() : Boolean
      {
         return var_421 != 1;
      }
      
      public function get blend() : Number
      {
         return var_421;
      }
      
      public function get id() : String
      {
         return _id;
      }
   }
}
