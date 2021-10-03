package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_342:Number = 0.5;
      
      private static const const_769:int = 3;
      
      private static const const_1103:Number = 1;
       
      
      private var var_2018:Boolean = false;
      
      private var var_2017:Boolean = false;
      
      private var var_1030:int = 0;
      
      private var var_264:Vector3d = null;
      
      private var var_2023:int = 0;
      
      private var var_2015:int = 0;
      
      private var var_2019:Boolean = false;
      
      private var var_2021:int = -2;
      
      private var var_2022:Boolean = false;
      
      private var var_2020:int = 0;
      
      private var var_2016:int = -1;
      
      private var var_406:Vector3d = null;
      
      private var var_2024:int = 0;
      
      public function RoomCamera()
      {
         super();
      }
      
      public function get roomWd() : int
      {
         return var_2023;
      }
      
      public function get targetId() : int
      {
         return var_2016;
      }
      
      public function set roomHt(param1:int) : void
      {
         var_2020 = param1;
      }
      
      public function set roomWd(param1:int) : void
      {
         var_2023 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         var_2018 = param1;
      }
      
      public function set targetId(param1:int) : void
      {
         var_2016 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         var_2017 = param1;
      }
      
      public function dispose() : void
      {
         var_406 = null;
         var_264 = null;
      }
      
      public function set target(param1:IVector3d) : void
      {
         if(var_406 == null)
         {
            var_406 = new Vector3d();
         }
         var_406.assign(param1);
         var_1030 = 0;
      }
      
      public function get targetCategory() : int
      {
         return var_2021;
      }
      
      public function get screenHt() : int
      {
         return var_2024;
      }
      
      public function set screenWd(param1:int) : void
      {
         var_2015 = param1;
      }
      
      public function get location() : IVector3d
      {
         return var_264;
      }
      
      public function set screenHt(param1:int) : void
      {
         var_2024 = param1;
      }
      
      public function get roomHt() : int
      {
         return var_2020;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return var_2018;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return var_2017;
      }
      
      public function update(param1:uint) : void
      {
         var _loc2_:* = null;
         if(var_406 != null && var_264 != null)
         {
            ++var_1030;
            _loc2_ = Vector3d.dif(var_406,var_264);
            if(_loc2_.length <= const_342)
            {
               var_264 = var_406;
               var_406 = null;
            }
            else
            {
               _loc2_.div(_loc2_.length);
               if(_loc2_.length < const_342 * (const_769 + 1))
               {
                  _loc2_.mul(const_342);
               }
               else if(var_1030 <= const_769)
               {
                  _loc2_.mul(const_342);
               }
               else
               {
                  _loc2_.mul(const_1103);
               }
               var_264 = Vector3d.sum(var_264,_loc2_);
            }
         }
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         var_2019 = param1;
      }
      
      public function get screenWd() : int
      {
         return var_2015;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         var_2022 = param1;
      }
      
      public function set targetCategory(param1:int) : void
      {
         var_2021 = param1;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(var_264 != null)
         {
            return;
         }
         var_264 = new Vector3d();
         var_264.assign(param1);
      }
      
      public function get centeredLocX() : Boolean
      {
         return var_2019;
      }
      
      public function get centeredLocY() : Boolean
      {
         return var_2022;
      }
   }
}
