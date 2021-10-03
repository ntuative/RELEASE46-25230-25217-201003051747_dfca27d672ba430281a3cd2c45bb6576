package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1247:String = "F";
      
      public static const const_952:String = "M";
       
      
      private var var_84:Number = 0;
      
      private var var_530:String = "";
      
      private var var_1891:int = 0;
      
      private var var_1658:String = "";
      
      private var var_1657:int = 0;
      
      private var var_1656:int = 0;
      
      private var var_1659:String = "";
      
      private var var_1306:String = "";
      
      private var _id:int = 0;
      
      private var var_197:Boolean = false;
      
      private var var_221:int = 0;
      
      private var var_1892:String = "";
      
      private var _name:String = "";
      
      private var var_1660:int = 0;
      
      private var _y:Number = 0;
      
      private var var_83:Number = 0;
      
      public function UserMessageData(param1:int)
      {
         super();
         _id = param1;
      }
      
      public function get z() : Number
      {
         return var_83;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get dir() : int
      {
         return var_221;
      }
      
      public function set dir(param1:int) : void
      {
         if(!var_197)
         {
            var_221 = param1;
         }
      }
      
      public function set name(param1:String) : void
      {
         if(!var_197)
         {
            _name = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get userType() : int
      {
         return var_1891;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!var_197)
         {
            var_1657 = param1;
         }
      }
      
      public function get subType() : String
      {
         return var_1892;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!var_197)
         {
            var_1659 = param1;
         }
      }
      
      public function set subType(param1:String) : void
      {
         if(!var_197)
         {
            var_1892 = param1;
         }
      }
      
      public function set xp(param1:int) : void
      {
         if(!var_197)
         {
            var_1656 = param1;
         }
      }
      
      public function set figure(param1:String) : void
      {
         if(!var_197)
         {
            var_530 = param1;
         }
      }
      
      public function set userType(param1:int) : void
      {
         if(!var_197)
         {
            var_1891 = param1;
         }
      }
      
      public function set sex(param1:String) : void
      {
         if(!var_197)
         {
            var_1306 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return var_1657;
      }
      
      public function get groupID() : String
      {
         return var_1659;
      }
      
      public function set webID(param1:int) : void
      {
         if(!var_197)
         {
            var_1660 = param1;
         }
      }
      
      public function set custom(param1:String) : void
      {
         if(!var_197)
         {
            var_1658 = param1;
         }
      }
      
      public function setReadOnly() : void
      {
         var_197 = true;
      }
      
      public function get sex() : String
      {
         return var_1306;
      }
      
      public function get figure() : String
      {
         return var_530;
      }
      
      public function get webID() : int
      {
         return var_1660;
      }
      
      public function get custom() : String
      {
         return var_1658;
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_197)
         {
            _y = param1;
         }
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_197)
         {
            var_83 = param1;
         }
      }
      
      public function set x(param1:Number) : void
      {
         if(!var_197)
         {
            var_84 = param1;
         }
      }
      
      public function get x() : Number
      {
         return var_84;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get xp() : int
      {
         return var_1656;
      }
   }
}
