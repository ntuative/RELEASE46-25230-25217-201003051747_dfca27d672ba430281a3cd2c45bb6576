package com.sulake.habbo.catalog.viewer.widgets.events
{
   import flash.events.Event;
   
   public class CatalogWidgetColoursEvent extends Event
   {
       
      
      private var var_1143:Array;
      
      private var var_1751:String;
      
      private var var_1750:String;
      
      private var var_1752:String;
      
      public function CatalogWidgetColoursEvent(param1:Array, param2:String, param3:String, param4:String, param5:Boolean = false, param6:Boolean = false)
      {
         super(WidgetEvent.CWE_COLOUR_ARRAY,param5,param6);
         var_1143 = param1;
         var_1751 = param2;
         var_1750 = param3;
         var_1752 = param4;
      }
      
      public function get colours() : Array
      {
         return var_1143;
      }
      
      public function get backgroundAssetName() : String
      {
         return var_1751;
      }
      
      public function get colourAssetName() : String
      {
         return var_1750;
      }
      
      public function get chosenColourAssetName() : String
      {
         return var_1752;
      }
   }
}
