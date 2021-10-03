package com.sulake.habbo.tracking
{
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.utils.debug.GarbageMonitor;
   import com.sulake.habbo.communication.messages.outgoing.tracking.PerformanceLogMessageComposer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import flash.external.ExternalInterface;
   import flash.system.Capabilities;
   import flash.system.System;
   import flash.utils.getTimer;
   
   public class PerformanceTracker
   {
       
      
      private var var_1569:GarbageMonitor = null;
      
      private var var_1135:int = 0;
      
      private var var_1244:Boolean = false;
      
      private var var_1957:String = "";
      
      private var var_1568:String = "";
      
      private var var_354:Number = 0;
      
      private var var_1337:int = 10;
      
      private var var_2326:Array;
      
      private var var_620:int = 0;
      
      private var var_1338:int = 60;
      
      private var var_1081:int = 0;
      
      private var var_1080:int = 0;
      
      private var var_1955:String = "";
      
      private var var_2210:Number = 0;
      
      private var var_1335:int = 1000;
      
      private var var_2211:Boolean = true;
      
      private var var_2209:Number = 0.15;
      
      private var var_174:IHabboConfigurationManager = null;
      
      private var var_1953:String = "";
      
      private var var_1336:int = 0;
      
      private var _connection:IConnection = null;
      
      public function PerformanceTracker()
      {
         var_2326 = [];
         super();
         var_1568 = Capabilities.version;
         var_1957 = Capabilities.os;
         var_1244 = Capabilities.isDebugger;
         var_1953 = !true ? ExternalInterface.call("window.navigator.userAgent.toString") : "unknown";
         var_1569 = new GarbageMonitor();
         updateGarbageMonitor();
         var_1135 = getTimer();
      }
      
      private function updateGarbageMonitor() : Object
      {
         var _loc2_:* = null;
         var _loc1_:Array = var_1569.list;
         if(_loc1_ == null || _loc1_.length == 0)
         {
            _loc2_ = new GarbageTester("tester");
            var_1569.insert(_loc2_,"tester");
            return _loc2_;
         }
         return null;
      }
      
      public function dispose() : void
      {
      }
      
      public function get averageUpdateInterval() : int
      {
         return var_354;
      }
      
      private function differenceInPercents(param1:Number, param2:Number) : Number
      {
         if(param1 == param2)
         {
            return 0;
         }
         var _loc3_:Number = param1;
         var _loc4_:Number = param2;
         if(param2 > param1)
         {
            _loc3_ = param2;
            _loc4_ = param1;
         }
         return 100 * (1 - _loc4_ / _loc3_);
      }
      
      public function set reportInterval(param1:int) : void
      {
         var_1338 = param1;
      }
      
      public function set connection(param1:IConnection) : void
      {
         _connection = param1;
      }
      
      public function get flashVersion() : String
      {
         return var_1568;
      }
      
      public function update(param1:uint) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Boolean = false;
         var _loc6_:Number = NaN;
         var _loc2_:Object = updateGarbageMonitor();
         if(_loc2_ != null)
         {
            ++var_1080;
            Logger.log("Garbage collection");
         }
         var _loc3_:Boolean = false;
         if(param1 > var_1335)
         {
            ++var_1081;
            _loc3_ = true;
         }
         else
         {
            ++var_620;
            if(var_620 <= 1)
            {
               var_354 = param1;
            }
            else
            {
               _loc4_ = Number(var_620);
               var_354 = var_354 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
            }
         }
         if(getTimer() - var_1135 > var_1338 * 1000 && var_1336 < var_1337)
         {
            Logger.log("*** Performance tracker: average frame rate " + 1000 / var_354);
            _loc5_ = true;
            if(var_2211 && var_1336 > 0)
            {
               _loc6_ = differenceInPercents(var_2210,var_354);
               if(_loc6_ < var_2209)
               {
                  _loc5_ = false;
               }
            }
            var_1135 = getTimer();
            if(_loc5_ || _loc3_)
            {
               var_2210 = var_354;
               if(sendReport())
               {
                  ++var_1336;
               }
            }
         }
      }
      
      public function set reportLimit(param1:int) : void
      {
         var_1337 = param1;
      }
      
      public function set slowUpdateLimit(param1:int) : void
      {
         var_1335 = param1;
      }
      
      private function sendReport() : Boolean
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(_connection != null)
         {
            _loc1_ = null;
            _loc2_ = getTimer() / 1000;
            _loc3_ = -1;
            _loc4_ = 0;
            _loc1_ = new PerformanceLogMessageComposer(_loc2_,var_1953,var_1568,var_1957,var_1955,var_1244,_loc4_,_loc3_,var_1080,var_354,var_1081);
            _connection.send(_loc1_);
            var_1080 = 0;
            var_354 = 0;
            var_620 = 0;
            var_1081 = 0;
            return true;
         }
         return false;
      }
      
      public function set configuration(param1:IHabboConfigurationManager) : void
      {
         var_174 = param1;
         var_1338 = int(var_174.getKey("performancetest.interval","60"));
         var_1335 = int(var_174.getKey("performancetest.slowupdatelimit","1000"));
         var_1337 = int(var_174.getKey("performancetest.reportlimit","10"));
         var_2209 = Number(var_174.getKey("performancetest.distribution.deviancelimit.percent","10"));
         var_2211 = Boolean(int(var_174.getKey("performancetest.distribution.enabled","1")));
      }
   }
}
