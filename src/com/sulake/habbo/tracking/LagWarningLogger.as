package com.sulake.habbo.tracking
{
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.habbo.communication.IHabboCommunicationManager;
   import com.sulake.habbo.communication.messages.outgoing.tracking.LagWarningReportMessageComposer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import flash.utils.getTimer;
   
   public class LagWarningLogger
   {
      
      public static const const_840:int = 0;
      
      public static const WARNING_TYPE_CHAT_DELAY:int = 1;
       
      
      private var var_1109:Boolean = true;
      
      private var var_1336:int = 0;
      
      private var var_759:int = 0;
      
      private var var_1135:int = 0;
      
      private var var_760:int = 0;
      
      private var _communication:IHabboCommunicationManager;
      
      private var var_1337:int = 15;
      
      private var var_174:IHabboConfigurationManager;
      
      private var _connection:IConnection;
      
      private var var_1338:int = 60;
      
      public function LagWarningLogger()
      {
         super();
         var_1135 = getTimer();
      }
      
      public function logWarnings() : void
      {
         if(!var_1109)
         {
            return;
         }
         if(nothingToReport)
         {
            return;
         }
         var _loc1_:LagWarningReportMessageComposer = new LagWarningReportMessageComposer(var_759,var_760);
         if(_connection != null)
         {
            _connection.send(_loc1_);
         }
         resetLog();
         ++var_1336;
      }
      
      private function get nothingToReport() : Boolean
      {
         return var_759 == 0 && var_760 == 0;
      }
      
      private function resetLog() : void
      {
         var_759 = 0;
         var_760 = 0;
      }
      
      public function update(param1:uint) : void
      {
         if(!var_1109)
         {
            return;
         }
         if(getTimer() - var_1135 > var_1338 * 1000 && var_1336 < var_1337)
         {
            var_1135 = getTimer();
            logWarnings();
         }
      }
      
      public function set configuration(param1:IHabboConfigurationManager) : void
      {
         var_174 = param1;
         var_1338 = int(var_174.getKey("lagwarninglog.interval","60"));
         var_1337 = int(var_174.getKey("lagwarninglog.reportlimit","15"));
         var_1109 = Boolean(int(var_174.getKey("lagwarninglog.enabled","1")));
      }
      
      public function registerWarning(param1:int) : void
      {
         switch(param1)
         {
            case WARNING_TYPE_CHAT_DELAY:
               var_760 += 1;
            case const_840:
               var_759 += 1;
         }
      }
      
      public function set communication(param1:IHabboCommunicationManager) : void
      {
         _communication = param1;
      }
      
      public function set connection(param1:IConnection) : void
      {
         _connection = param1;
      }
   }
}
