package com.sulake.habbo.room.object.logic.furniture
{
   import com.sulake.habbo.room.events.RoomObjectFurnitureActionEvent;
   import com.sulake.habbo.room.object.RoomObjectVariableEnum;
   import com.sulake.room.messages.RoomObjectUpdateMessage;
   
   public class FurnitureJukeboxLogic extends FurnitureMultiStateLogic
   {
       
      
      private var var_1613:Boolean;
      
      public function FurnitureJukeboxLogic()
      {
         super();
      }
      
      private function requestDispose() : void
      {
         if(object == null || eventDispatcher == null)
         {
            return;
         }
         var _loc1_:RoomObjectFurnitureActionEvent = new RoomObjectFurnitureActionEvent(RoomObjectFurnitureActionEvent.const_442,object.getId(),object.getType());
         eventDispatcher.dispatchEvent(_loc1_);
      }
      
      override public function dispose() : void
      {
         requestDispose();
         super.dispose();
      }
      
      private function requestInit() : void
      {
         if(object == null || eventDispatcher == null)
         {
            return;
         }
         var _loc1_:RoomObjectFurnitureActionEvent = new RoomObjectFurnitureActionEvent(RoomObjectFurnitureActionEvent.const_447,object.getId(),object.getType());
         eventDispatcher.dispatchEvent(_loc1_);
         var_1613 = true;
      }
      
      override public function processUpdateMessage(param1:RoomObjectUpdateMessage) : void
      {
         super.processUpdateMessage(param1);
         if(object.getModelController().getNumber(RoomObjectVariableEnum.const_1002) == 1 && !var_1613)
         {
            requestInit();
         }
      }
   }
}
