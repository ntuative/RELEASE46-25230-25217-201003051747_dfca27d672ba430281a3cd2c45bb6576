package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1672:int;
      
      private var var_530:String;
      
      private var var_1630:int;
      
      private var var_2065:int;
      
      private var var_1669:int;
      
      private var var_2066:int;
      
      private var _nutrition:int;
      
      private var var_1275:int;
      
      private var var_2064:int;
      
      private var var_2063:int;
      
      private var _energy:int;
      
      private var _name:String;
      
      private var _ownerName:String;
      
      private var var_1673:int;
      
      private var var_2062:int;
      
      public function PetInfoMessageParser()
      {
         super();
      }
      
      public function get level() : int
      {
         return var_1630;
      }
      
      public function get energy() : int
      {
         return _energy;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get maxEnergy() : int
      {
         return var_2066;
      }
      
      public function flush() : Boolean
      {
         var_1275 = -1;
         return true;
      }
      
      public function get maxLevel() : int
      {
         return var_2064;
      }
      
      public function get experienceRequiredToLevel() : int
      {
         return var_2063;
      }
      
      public function get maxNutrition() : int
      {
         return var_2062;
      }
      
      public function get figure() : String
      {
         return var_530;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get respect() : int
      {
         return var_2065;
      }
      
      public function get petId() : int
      {
         return var_1275;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         var_1275 = param1.readInteger();
         _name = param1.readString();
         var_1630 = param1.readInteger();
         var_2064 = param1.readInteger();
         var_1669 = param1.readInteger();
         var_2063 = param1.readInteger();
         _energy = param1.readInteger();
         var_2066 = param1.readInteger();
         _nutrition = param1.readInteger();
         var_2062 = param1.readInteger();
         var_530 = param1.readString();
         var_2065 = param1.readInteger();
         var_1673 = param1.readInteger();
         var_1672 = param1.readInteger();
         _ownerName = param1.readString();
         return true;
      }
      
      public function get nutrition() : int
      {
         return _nutrition;
      }
      
      public function get experience() : int
      {
         return var_1669;
      }
      
      public function get ownerId() : int
      {
         return var_1673;
      }
      
      public function get age() : int
      {
         return var_1672;
      }
   }
}
