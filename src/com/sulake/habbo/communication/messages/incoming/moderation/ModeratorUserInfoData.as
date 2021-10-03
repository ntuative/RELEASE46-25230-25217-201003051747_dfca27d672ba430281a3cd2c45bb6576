package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ModeratorUserInfoData
   {
       
      
      private var var_1844:int;
      
      private var var_1847:int;
      
      private var var_1846:int;
      
      private var _userName:String;
      
      private var var_1848:int;
      
      private var var_1845:int;
      
      private var var_1843:int;
      
      private var _userId:int;
      
      private var var_695:Boolean;
      
      public function ModeratorUserInfoData(param1:IMessageDataWrapper)
      {
         super();
         _userId = param1.readInteger();
         _userName = param1.readString();
         var_1845 = param1.readInteger();
         var_1848 = param1.readInteger();
         var_695 = param1.readBoolean();
         var_1846 = param1.readInteger();
         var_1847 = param1.readInteger();
         var_1844 = param1.readInteger();
         var_1843 = param1.readInteger();
      }
      
      public function get banCount() : int
      {
         return var_1843;
      }
      
      public function get userId() : int
      {
         return _userId;
      }
      
      public function get online() : Boolean
      {
         return var_695;
      }
      
      public function get minutesSinceLastLogin() : int
      {
         return var_1848;
      }
      
      public function get abusiveCfhCount() : int
      {
         return var_1847;
      }
      
      public function get cautionCount() : int
      {
         return var_1844;
      }
      
      public function get cfhCount() : int
      {
         return var_1846;
      }
      
      public function get minutesSinceRegistration() : int
      {
         return var_1845;
      }
      
      public function get userName() : String
      {
         return _userName;
      }
   }
}
