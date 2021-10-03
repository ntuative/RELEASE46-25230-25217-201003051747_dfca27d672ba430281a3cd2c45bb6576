package com.sulake.core.runtime
{
   import flash.utils.getQualifiedClassName;
   
   final class InterfaceStruct implements IDisposable
   {
       
      
      private var var_374:uint;
      
      private var var_949:IUnknown;
      
      private var var_1125:String;
      
      private var var_950:IID;
      
      function InterfaceStruct(param1:IID, param2:IUnknown)
      {
         super();
         var_950 = param1;
         var_1125 = getQualifiedClassName(var_950);
         var_949 = param2;
         var_374 = 0;
      }
      
      public function get iid() : IID
      {
         return var_950;
      }
      
      public function get disposed() : Boolean
      {
         return var_949 == null;
      }
      
      public function get references() : uint
      {
         return var_374;
      }
      
      public function release() : uint
      {
         return references > 0 ? uint(--var_374) : uint(0);
      }
      
      public function get unknown() : IUnknown
      {
         return var_949;
      }
      
      public function get iis() : String
      {
         return var_1125;
      }
      
      public function reserve() : uint
      {
         return ++var_374;
      }
      
      public function dispose() : void
      {
         var_950 = null;
         var_1125 = null;
         var_949 = null;
         var_374 = 0;
      }
   }
}
