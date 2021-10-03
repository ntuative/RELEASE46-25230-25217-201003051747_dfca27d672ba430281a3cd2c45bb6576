package com.sulake.habbo.toolbar
{
   public class StateItem
   {
       
      
      private var var_1261:Boolean;
      
      private var var_2082:String;
      
      private var _frames:XMLList;
      
      private var var_1021:String = "-1";
      
      private var var_743:String;
      
      private var var_178:int = 120;
      
      private var var_1286:String = "-1";
      
      private var var_1285:String;
      
      private var var_2081:Boolean;
      
      private var var_1528:String = "-1";
      
      private var _id:String;
      
      public function StateItem(param1:XML, param2:String)
      {
         super();
         _id = param1.@id;
         if(param1.attribute("loop").length() > 0)
         {
            var_1261 = Boolean(param1.@loop);
         }
         if(param1.attribute("bounce").length() > 0)
         {
            var_2081 = Boolean(param1.@loop);
         }
         if(param1.attribute("timer").length() > 0)
         {
            var_178 = int(param1.@timer);
         }
         if(param1.attribute("namebase").length() > 0)
         {
            var_1285 = param1.@namebase;
         }
         else
         {
            var_1285 = param2;
         }
         if(param1.attribute("state_over").length() > 0)
         {
            var_1021 = param1.@state_over;
         }
         if(param1.attribute("nextState").length() > 0)
         {
            var_1286 = param1.@nextState;
         }
         else
         {
            var_1286 = _id;
         }
         if(param1.attribute("state_default").length() > 0)
         {
            var_1528 = param1.@state_default;
         }
         if(param1.attribute("tooltip").length() > 0)
         {
            var_2082 = param1.@tooltip;
         }
         if(param1.attribute("background").length() > 0)
         {
            var_743 = param1.@background;
         }
         var _loc3_:XMLList = param1.elements("frame");
         if(_loc3_.length() > 0)
         {
            _frames = _loc3_;
         }
      }
      
      public function get hasStateOver() : Boolean
      {
         return var_1021 != "-1";
      }
      
      public function get bounce() : Boolean
      {
         return var_2081;
      }
      
      public function get defaultState() : String
      {
         return var_1528;
      }
      
      public function get hasDefaultState() : Boolean
      {
         return var_1528 != "-1";
      }
      
      public function get tooltip() : String
      {
         return var_2082;
      }
      
      public function get id() : String
      {
         return _id;
      }
      
      public function get timer() : int
      {
         return var_178;
      }
      
      public function get loop() : Boolean
      {
         return var_1261;
      }
      
      public function get nextState() : String
      {
         return var_1286;
      }
      
      public function get frames() : XMLList
      {
         return _frames;
      }
      
      public function get background() : String
      {
         return var_743;
      }
      
      public function get stateOver() : String
      {
         return var_1021;
      }
      
      public function get nameBase() : String
      {
         return var_1285;
      }
   }
}
