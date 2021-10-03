package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ItemMessageData
   {
       
      
      private var var_83:Number = 0;
      
      private var _data:String = "";
      
      private var var_1433:int = 0;
      
      private var var_34:int = 0;
      
      private var _type:int = 0;
      
      private var _y:Number = 0;
      
      private var var_1645:Boolean = false;
      
      private var var_2351:String = "";
      
      private var _id:int = 0;
      
      private var var_197:Boolean = false;
      
      private var var_221:String = "";
      
      private var var_1644:int = 0;
      
      private var var_1646:int = 0;
      
      private var var_1643:int = 0;
      
      private var var_1647:int = 0;
      
      public function ItemMessageData(param1:int, param2:int, param3:Boolean)
      {
         super();
         _id = param1;
         _type = param2;
         var_1645 = param3;
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_197)
         {
            _y = param1;
         }
      }
      
      public function get isOldFormat() : Boolean
      {
         return var_1645;
      }
      
      public function set type(param1:int) : void
      {
         if(!var_197)
         {
            _type = param1;
         }
      }
      
      public function get dir() : String
      {
         return var_221;
      }
      
      public function get state() : int
      {
         return var_34;
      }
      
      public function set localX(param1:Number) : void
      {
         if(!var_197)
         {
            var_1643 = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set wallX(param1:Number) : void
      {
         if(!var_197)
         {
            var_1644 = param1;
         }
      }
      
      public function set wallY(param1:Number) : void
      {
         if(!var_197)
         {
            var_1646 = param1;
         }
      }
      
      public function set dir(param1:String) : void
      {
         if(!var_197)
         {
            var_221 = param1;
         }
      }
      
      public function get data() : String
      {
         return _data;
      }
      
      public function set localY(param1:Number) : void
      {
         if(!var_197)
         {
            var_1647 = param1;
         }
      }
      
      public function set state(param1:int) : void
      {
         if(!var_197)
         {
            var_34 = param1;
         }
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get localX() : Number
      {
         return var_1643;
      }
      
      public function set data(param1:String) : void
      {
         if(!var_197)
         {
            _data = param1;
         }
      }
      
      public function get wallX() : Number
      {
         return var_1644;
      }
      
      public function get wallY() : Number
      {
         return var_1646;
      }
      
      public function get localY() : Number
      {
         return var_1647;
      }
      
      public function setReadOnly() : void
      {
         var_197 = true;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get z() : Number
      {
         return var_83;
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_197)
         {
            var_83 = param1;
         }
      }
   }
}
