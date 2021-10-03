package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_521:int = 6;
      
      public static const const_193:int = 5;
      
      public static const const_515:int = 2;
      
      public static const const_331:int = 9;
      
      public static const const_335:int = 4;
      
      public static const const_227:int = 2;
      
      public static const const_720:int = 4;
      
      public static const const_200:int = 8;
      
      public static const const_682:int = 7;
      
      public static const const_228:int = 3;
      
      public static const const_286:int = 1;
      
      public static const const_191:int = 5;
      
      public static const const_482:int = 12;
      
      public static const const_315:int = 1;
      
      public static const const_584:int = 11;
      
      public static const const_677:int = 3;
      
      public static const const_1580:int = 10;
       
      
      private var _navigator:HabboNavigator;
      
      private var var_402:Array;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         _navigator = param1;
         var_402 = new Array();
         var_402.push(new Tab(_navigator,const_286,const_482,new EventsTabPageDecorator(_navigator),MainViewCtrl.const_358));
         var_402.push(new Tab(_navigator,const_227,const_315,new RoomsTabPageDecorator(_navigator),MainViewCtrl.const_358));
         var_402.push(new Tab(_navigator,const_335,const_584,new OfficialTabPageDecorator(_navigator),MainViewCtrl.const_888));
         var_402.push(new Tab(_navigator,const_228,const_193,new MyRoomsTabPageDecorator(_navigator),MainViewCtrl.const_358));
         var_402.push(new Tab(_navigator,const_191,const_200,new SearchTabPageDecorator(_navigator),MainViewCtrl.const_502));
         setSelectedTab(const_286);
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_402)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in var_402)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_402)
         {
            _loc1_.selected = false;
         }
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_335;
      }
      
      public function get tabs() : Array
      {
         return var_402;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         getTab(param1).selected = true;
      }
   }
}
