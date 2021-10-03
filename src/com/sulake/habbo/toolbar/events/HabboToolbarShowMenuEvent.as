package com.sulake.habbo.toolbar.events
{
   import com.sulake.core.window.IWindowContainer;
   import flash.events.Event;
   
   public class HabboToolbarShowMenuEvent extends Event
   {
      
      public static const const_714:String = "HTSME_DISPLAY_WINDOW";
      
      public static const const_879:String = "HTSME_HIDE_WINDOW";
      
      public static const const_436:String = "HTSME_ANIMATE_MENU_OUT";
      
      public static const const_46:String = "HTSME_ANIMATE_MENU_IN";
       
      
      private var var_1962:String;
      
      private var var_1961:Boolean;
      
      private var _window:IWindowContainer;
      
      public function HabboToolbarShowMenuEvent(param1:String, param2:String, param3:IWindowContainer, param4:Boolean = true, param5:Boolean = false, param6:Boolean = false)
      {
         var_1962 = param2;
         _window = param3;
         var_1961 = param4;
         super(param1,param5,param6);
      }
      
      public function get window() : IWindowContainer
      {
         return _window;
      }
      
      public function get menuId() : String
      {
         return var_1962;
      }
      
      public function get alignToIcon() : Boolean
      {
         return var_1961;
      }
   }
}
