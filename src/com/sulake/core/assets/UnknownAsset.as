package com.sulake.core.assets
{
   import flash.utils.getQualifiedClassName;
   
   public class UnknownAsset implements IAsset
   {
       
      
      private var _disposed:Boolean = false;
      
      private var var_1133:AssetTypeDeclaration;
      
      private var var_922:String;
      
      private var var_20:Object = null;
      
      public function UnknownAsset(param1:AssetTypeDeclaration, param2:String = null)
      {
         super();
         var_1133 = param1;
         var_922 = param2;
      }
      
      public function setParamsDesc(param1:XMLList) : void
      {
      }
      
      public function get declaration() : AssetTypeDeclaration
      {
         return var_1133;
      }
      
      public function setUnknownContent(param1:Object) : void
      {
         var_20 = param1;
      }
      
      public function setFromOtherAsset(param1:IAsset) : void
      {
         var_20 = param1.content as Object;
      }
      
      public function get content() : Object
      {
         return var_20;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function dispose() : void
      {
         if(!_disposed)
         {
            _disposed = true;
            var_20 = null;
            var_1133 = null;
            var_922 = null;
         }
      }
      
      public function get url() : String
      {
         return var_922;
      }
      
      public function toString() : String
      {
         return getQualifiedClassName(this) + ": " + var_20;
      }
   }
}
