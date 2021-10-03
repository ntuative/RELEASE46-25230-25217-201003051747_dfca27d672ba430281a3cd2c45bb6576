package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1049:int = 1;
      
      private static const const_1117:int = 3;
      
      private static const const_1050:int = 2;
      
      private static const const_1051:int = 15;
       
      
      private var var_771:int;
      
      private var var_239:Array;
      
      public function FurnitureQueueTileVisualization()
      {
         var_239 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1050)
         {
            var_239 = new Array();
            var_239.push(const_1049);
            var_771 = const_1051;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(var_771 > 0)
         {
            --var_771;
         }
         if(var_771 == 0)
         {
            if(false)
            {
               super.setAnimation(var_239.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
