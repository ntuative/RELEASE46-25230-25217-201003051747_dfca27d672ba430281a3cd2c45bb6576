package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ObjectMessageData
   {
       
      
      private var var_985:int = 0;
      
      private var _data:String = "";
      
      private var var_1433:int = -1;
      
      private var var_34:int = 0;
      
      private var _type:int = 0;
      
      private var var_984:int = 0;
      
      private var var_2351:String = "";
      
      private var var_1685:int = 0;
      
      private var _id:int = 0;
      
      private var var_197:Boolean = false;
      
      private var var_221:int = 0;
      
      private var var_1686:String = null;
      
      private var var_84:Number = 0;
      
      private var _y:Number = 0;
      
      private var var_83:Number = 0;
      
      public function ObjectMessageData(param1:int)
      {
         super();
         _id = param1;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function set type(param1:int) : void
      {
         if(!var_197)
         {
            _type = param1;
         }
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_197)
         {
            _y = param1;
         }
      }
      
      public function get dir() : int
      {
         return var_221;
      }
      
      public function get extra() : int
      {
         return var_1433;
      }
      
      public function get state() : int
      {
         return var_34;
      }
      
      public function set dir(param1:int) : void
      {
         if(!var_197)
         {
            var_221 = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set x(param1:Number) : void
      {
         if(!var_197)
         {
            var_84 = param1;
         }
      }
      
      public function set extra(param1:int) : void
      {
         if(!var_197)
         {
            var_1433 = param1;
         }
      }
      
      public function get z() : Number
      {
         return var_83;
      }
      
      public function set state(param1:int) : void
      {
         if(!var_197)
         {
            var_34 = param1;
         }
      }
      
      public function get data() : String
      {
         return _data;
      }
      
      public function get expiryTime() : int
      {
         return var_1685;
      }
      
      public function get staticClass() : String
      {
         return var_1686;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function set expiryTime(param1:int) : void
      {
         if(!var_197)
         {
            var_1685 = param1;
         }
      }
      
      public function set data(param1:String) : void
      {
         if(!var_197)
         {
            _data = param1;
         }
      }
      
      public function set staticClass(param1:String) : void
      {
         if(!var_197)
         {
            var_1686 = param1;
         }
      }
      
      public function setReadOnly() : void
      {
         var_197 = true;
      }
      
      public function set sizeX(param1:int) : void
      {
         if(!var_197)
         {
            var_985 = param1;
         }
      }
      
      public function set sizeY(param1:int) : void
      {
         if(!var_197)
         {
            var_984 = param1;
         }
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_197)
         {
            var_83 = param1;
         }
      }
      
      public function get sizeX() : int
      {
         return var_985;
      }
      
      public function get x() : Number
      {
         return var_84;
      }
      
      public function get sizeY() : int
      {
         return var_984;
      }
   }
}
