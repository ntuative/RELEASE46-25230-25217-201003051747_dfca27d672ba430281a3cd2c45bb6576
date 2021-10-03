package com.sulake.habbo.avatar.alias
{
   public class AssetAlias
   {
       
      
      private var var_953:Boolean;
      
      private var _name:String;
      
      private var var_1852:String;
      
      private var var_954:Boolean;
      
      public function AssetAlias(param1:XML)
      {
         super();
         _name = String(param1.@name);
         var_1852 = String(param1.@link);
         var_954 = Boolean(parseInt(param1.@fliph));
         var_953 = Boolean(parseInt(param1.@flipv));
      }
      
      public function get flipH() : Boolean
      {
         return var_954;
      }
      
      public function get flipV() : Boolean
      {
         return var_953;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get link() : String
      {
         return var_1852;
      }
   }
}
