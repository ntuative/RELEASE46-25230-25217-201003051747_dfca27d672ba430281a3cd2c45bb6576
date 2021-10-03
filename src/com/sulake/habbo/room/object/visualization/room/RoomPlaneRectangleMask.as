package com.sulake.habbo.room.object.visualization.room
{
   public class RoomPlaneRectangleMask
   {
       
      
      private var var_2061:Number = 0;
      
      private var var_2059:Number = 0;
      
      private var var_2058:Number = 0;
      
      private var var_2060:Number = 0;
      
      public function RoomPlaneRectangleMask(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         var_2059 = param1;
         var_2058 = param2;
         var_2061 = param3;
         var_2060 = param4;
      }
      
      public function get leftSideLoc() : Number
      {
         return var_2059;
      }
      
      public function get leftSideLength() : Number
      {
         return var_2061;
      }
      
      public function get rightSideLoc() : Number
      {
         return var_2058;
      }
      
      public function get rightSideLength() : Number
      {
         return var_2060;
      }
   }
}
