package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureBottleVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1117:int = -1;
      
      private static const const_782:int = 20;
      
      private static const const_495:int = 9;
       
      
      private var var_609:Boolean = false;
      
      private var var_239:Array;
      
      public function FurnitureBottleVisualization()
      {
         var_239 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == -1)
         {
            var_609 = true;
            var_239 = new Array();
            var_239.push(const_1117);
            return;
         }
         if(param1 >= 0 && param1 <= 7)
         {
            if(var_609)
            {
               var_609 = false;
               var_239 = new Array();
               var_239.push(const_782);
               var_239.push(const_495 + param1);
               var_239.push(param1);
               return;
            }
            super.setAnimation(param1);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(super.getLastFramePlayed(0))
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
