package com.sulake.core.window.utils
{
   import com.sulake.core.window.IWindowContext;
   import flash.display.DisplayObject;
   
   public class InternalWindowServices implements IInternalWindowServices
   {
       
      
      private var var_119:DisplayObject;
      
      private var var_2312:uint;
      
      private var var_850:IWindowToolTipAgentService;
      
      private var var_848:IWindowMouseScalingService;
      
      private var var_210:IWindowContext;
      
      private var var_847:IWindowFocusManagerService;
      
      private var var_851:IWindowMouseListenerService;
      
      private var var_849:IWindowMouseDraggingService;
      
      public function InternalWindowServices(param1:IWindowContext, param2:DisplayObject)
      {
         super();
         var_2312 = 0;
         var_119 = param2;
         var_210 = param1;
         var_849 = new WindowMouseDragger(param2);
         var_848 = new WindowMouseScaler(param2);
         var_851 = new WindowMouseListener(param2);
         var_847 = new FocusManager(param2);
         var_850 = new WindowToolTipAgent(param2);
      }
      
      public function getMouseScalingService() : IWindowMouseScalingService
      {
         return var_848;
      }
      
      public function getFocusManagerService() : IWindowFocusManagerService
      {
         return var_847;
      }
      
      public function getToolTipAgentService() : IWindowToolTipAgentService
      {
         return var_850;
      }
      
      public function dispose() : void
      {
         if(var_849 != null)
         {
            var_849.dispose();
            var_849 = null;
         }
         if(var_848 != null)
         {
            var_848.dispose();
            var_848 = null;
         }
         if(var_851 != null)
         {
            var_851.dispose();
            var_851 = null;
         }
         if(var_847 != null)
         {
            var_847.dispose();
            var_847 = null;
         }
         if(var_850 != null)
         {
            var_850.dispose();
            var_850 = null;
         }
         var_210 = null;
      }
      
      public function getMouseListenerService() : IWindowMouseListenerService
      {
         return var_851;
      }
      
      public function getMouseDraggingService() : IWindowMouseDraggingService
      {
         return var_849;
      }
   }
}
