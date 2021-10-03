package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var var_530:String;
      
      private var var_2281:String;
      
      private var var_2280:int;
      
      private var var_2284:int;
      
      private var var_1306:String;
      
      private var var_1230:String;
      
      private var _name:String;
      
      private var var_480:int;
      
      private var var_830:int;
      
      private var var_2282:int;
      
      private var var_2157:int;
      
      private var var_2283:String;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function get directMail() : int
      {
         return this.var_2284;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get realName() : String
      {
         return this.var_1230;
      }
      
      public function get customData() : String
      {
         return this.var_2281;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get petRespectLeft() : int
      {
         return this.var_480;
      }
      
      public function get photoFilm() : int
      {
         return this.var_2280;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get poolFigure() : String
      {
         return this.var_2283;
      }
      
      public function get figure() : String
      {
         return this.var_530;
      }
      
      public function get respectTotal() : int
      {
         return this.var_2157;
      }
      
      public function get sex() : String
      {
         return this.var_1306;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this.var_530 = param1.readString();
         this.var_1306 = param1.readString();
         this.var_2281 = param1.readString();
         this.var_1230 = param1.readString();
         this.var_2282 = param1.readInteger();
         this.var_2283 = param1.readString();
         this.var_2280 = param1.readInteger();
         this.var_2284 = param1.readInteger();
         this.var_2157 = param1.readInteger();
         this.var_830 = param1.readInteger();
         this.var_480 = param1.readInteger();
         return true;
      }
      
      public function get tickets() : int
      {
         return this.var_2282;
      }
      
      public function get respectLeft() : int
      {
         return this.var_830;
      }
   }
}
