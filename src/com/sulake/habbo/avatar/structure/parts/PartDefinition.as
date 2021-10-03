package com.sulake.habbo.avatar.structure.parts
{
   public class PartDefinition
   {
       
      
      private var _removeSetType:String;
      
      private var var_1507:int = -1;
      
      private var var_1268:Boolean;
      
      private var var_1269:String;
      
      private var var_2031:String;
      
      public function PartDefinition(param1:XML)
      {
         super();
         var_2031 = String(param1["set-type"]);
         var_1269 = String(param1["flipped-set-type"]);
         _removeSetType = String(param1["remove-set-type"]);
         var_1268 = false;
      }
      
      public function hasStaticId() : Boolean
      {
         return var_1507 >= 0;
      }
      
      public function get flippedSetType() : String
      {
         return var_1269;
      }
      
      public function get staticId() : int
      {
         return var_1507;
      }
      
      public function set staticId(param1:int) : void
      {
         var_1507 = param1;
      }
      
      public function get appendToFigure() : Boolean
      {
         return var_1268;
      }
      
      public function set appendToFigure(param1:Boolean) : void
      {
         var_1268 = param1;
      }
      
      public function set flippedSetType(param1:String) : void
      {
         var_1269 = param1;
      }
      
      public function get setType() : String
      {
         return var_2031;
      }
      
      public function get removeSetType() : String
      {
         return _removeSetType;
      }
   }
}
