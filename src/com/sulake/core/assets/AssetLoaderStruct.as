package com.sulake.core.assets
{
   import com.sulake.core.assets.loaders.IAssetLoader;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.events.EventDispatcher;
   
   public class AssetLoaderStruct extends EventDispatcher implements IDisposable
   {
       
      
      private var var_681:IAssetLoader;
      
      private var var_1113:String;
      
      public function AssetLoaderStruct(param1:String, param2:IAssetLoader)
      {
         super();
         var_1113 = param1;
         var_681 = param2;
      }
      
      public function get assetLoader() : IAssetLoader
      {
         return var_681;
      }
      
      override public function dispose() : void
      {
         if(!disposed)
         {
            if(var_681 != null)
            {
               if(true)
               {
                  var_681.dispose();
                  var_681 = null;
               }
            }
            super.dispose();
         }
      }
      
      public function get assetName() : String
      {
         return var_1113;
      }
   }
}
