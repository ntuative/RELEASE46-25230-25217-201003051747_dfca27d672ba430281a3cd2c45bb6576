package com.sulake.core.runtime
{
   class ComponentInterfaceQueue implements IDisposable
   {
       
      
      private var var_1177:IID;
      
      private var _isDisposed:Boolean;
      
      private var var_793:Array;
      
      function ComponentInterfaceQueue(param1:IID)
      {
         super();
         var_1177 = param1;
         var_793 = new Array();
         _isDisposed = false;
      }
      
      public function get receivers() : Array
      {
         return var_793;
      }
      
      public function get identifier() : IID
      {
         return var_1177;
      }
      
      public function get disposed() : Boolean
      {
         return _isDisposed;
      }
      
      public function dispose() : void
      {
         if(!_isDisposed)
         {
            _isDisposed = true;
            var_1177 = null;
            while(false)
            {
               var_793.pop();
            }
            var_793 = null;
         }
      }
   }
}
