package com.sulake.habbo.help.cfh.data
{
   import com.sulake.core.utils.Map;
   
   public class UserRegistry
   {
      
      private static const const_1042:int = 80;
       
      
      private var var_449:Map;
      
      private var var_632:String = "";
      
      private var var_1134:Array;
      
      public function UserRegistry()
      {
         var_449 = new Map();
         var_1134 = new Array();
         super();
      }
      
      private function addRoomNameForMissing() : void
      {
         var _loc1_:* = null;
         while(false)
         {
            _loc1_ = var_449.getValue(var_1134.shift());
            if(_loc1_ != null)
            {
               _loc1_.roomName = var_632;
            }
         }
      }
      
      public function registerUser(param1:int, param2:String, param3:Boolean = true) : void
      {
         var _loc4_:* = null;
         if(var_449.getValue(param1) != null)
         {
            var_449.remove(param1);
         }
         if(param3)
         {
            _loc4_ = new UserRegistryItem(param1,param2,var_632);
         }
         else
         {
            _loc4_ = new UserRegistryItem(param1,param2);
         }
         if(param3 && var_632 == "")
         {
            var_1134.push(param1);
         }
         var_449.add(param1,_loc4_);
         purgeUserIndex();
      }
      
      public function getRegistry() : Map
      {
         return var_449;
      }
      
      public function unregisterRoom() : void
      {
         var_632 = "";
      }
      
      private function purgeUserIndex() : void
      {
         var _loc1_:int = 0;
         while(var_449.length > const_1042)
         {
            _loc1_ = var_449.getKey(0);
            var_449.remove(_loc1_);
         }
      }
      
      public function registerRoom(param1:String) : void
      {
         var_632 = param1;
         if(var_632 != "")
         {
            addRoomNameForMissing();
         }
      }
   }
}
