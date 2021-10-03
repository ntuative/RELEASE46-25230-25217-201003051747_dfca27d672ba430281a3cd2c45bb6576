package com.sulake.room.renderer.utils
{
   public class ObjectMouseData
   {
       
      
      private var var_1836:String = "";
      
      private var var_148:String = "";
      
      public function ObjectMouseData()
      {
         super();
      }
      
      public function set spriteTag(param1:String) : void
      {
         var_1836 = param1;
      }
      
      public function set objectId(param1:String) : void
      {
         var_148 = param1;
      }
      
      public function get spriteTag() : String
      {
         return var_1836;
      }
      
      public function get objectId() : String
      {
         return var_148;
      }
   }
}
