package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_573:int = 2;
      
      public static const const_902:int = 6;
      
      public static const const_663:int = 1;
      
      public static const const_528:int = 3;
      
      public static const const_884:int = 4;
      
      public static const const_690:int = 5;
       
      
      private var var_2196:String;
      
      private var var_977:int;
      
      private var var_1689:String;
      
      private var _type:int;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         _type = param1;
         var_977 = param2;
         var_1689 = param3;
         var_2196 = param4;
      }
      
      public function get time() : String
      {
         return var_2196;
      }
      
      public function get senderId() : int
      {
         return var_977;
      }
      
      public function get messageText() : String
      {
         return var_1689;
      }
      
      public function get type() : int
      {
         return _type;
      }
   }
}
