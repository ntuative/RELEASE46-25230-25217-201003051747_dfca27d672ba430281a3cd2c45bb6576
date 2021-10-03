package com.sulake.habbo.toolbar
{
   public class MenuSettingsItem
   {
       
      
      private var var_1971:Array;
      
      private var var_1962:String;
      
      private var var_1970:Boolean;
      
      public function MenuSettingsItem(param1:String, param2:Array = null, param3:Boolean = false)
      {
         super();
         var_1962 = param1;
         var_1971 = param2;
         var_1970 = param3;
      }
      
      public function get menuId() : String
      {
         return var_1962;
      }
      
      public function get yieldList() : Array
      {
         return var_1971;
      }
      
      public function get lockToIcon() : Boolean
      {
         return var_1970;
      }
   }
}
