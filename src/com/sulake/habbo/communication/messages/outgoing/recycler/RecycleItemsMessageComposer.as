package com.sulake.habbo.communication.messages.outgoing.recycler
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RecycleItemsMessageComposer implements IMessageComposer
   {
       
      
      private var var_889:Array;
      
      public function RecycleItemsMessageComposer(param1:Array)
      {
         super();
         var_889 = new Array();
         var_889.push(param1.length);
         var_889 = var_889.concat(param1);
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return var_889;
      }
   }
}
