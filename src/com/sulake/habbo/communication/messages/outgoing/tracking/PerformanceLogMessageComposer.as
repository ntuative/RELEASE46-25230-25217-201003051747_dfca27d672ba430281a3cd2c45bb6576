package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_1081:int = 0;
      
      private var var_1244:int = 0;
      
      private var var_1957:String = "";
      
      private var var_1080:int = 0;
      
      private var var_1955:String = "";
      
      private var var_1958:int = 0;
      
      private var var_1568:String = "";
      
      private var var_1959:int = 0;
      
      private var var_1954:int = 0;
      
      private var var_1953:String = "";
      
      private var var_1956:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         var_1959 = param1;
         var_1953 = param2;
         var_1568 = param3;
         var_1957 = param4;
         var_1955 = param5;
         if(param6)
         {
            var_1244 = 1;
         }
         else
         {
            var_1244 = 0;
         }
         var_1958 = param7;
         var_1954 = param8;
         var_1080 = param9;
         var_1956 = param10;
         var_1081 = param11;
      }
      
      public function getMessageArray() : Array
      {
         return [var_1959,var_1953,var_1568,var_1957,var_1955,var_1244,var_1958,var_1954,var_1080,var_1956,var_1081];
      }
      
      public function dispose() : void
      {
      }
   }
}
