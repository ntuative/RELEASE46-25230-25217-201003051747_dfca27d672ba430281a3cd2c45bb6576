package com.sulake.habbo.communication.messages.outgoing.room.engine
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RemovePetFromFlatMessageComposer implements IMessageComposer
   {
       
      
      private var var_1275:int;
      
      public function RemovePetFromFlatMessageComposer(param1:int)
      {
         super();
         var_1275 = param1;
      }
      
      public function getMessageArray() : Array
      {
         return [var_1275];
      }
      
      public function dispose() : void
      {
      }
   }
}
