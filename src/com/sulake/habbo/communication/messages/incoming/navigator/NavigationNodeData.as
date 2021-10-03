package com.sulake.habbo.communication.messages.incoming.navigator
{
   public class NavigationNodeData
   {
       
      
      private var var_1320:int;
      
      private var var_1578:String;
      
      public function NavigationNodeData(param1:int, param2:String)
      {
         super();
         var_1320 = param1;
         var_1578 = param2;
         Logger.log("READ NODE: " + var_1320 + ", " + var_1578);
      }
      
      public function get nodeName() : String
      {
         return var_1578;
      }
      
      public function get nodeId() : int
      {
         return var_1320;
      }
   }
}
