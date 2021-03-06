package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RoomDimmerSavePresetMessageComposer implements IMessageComposer
   {
       
      
      private var var_2004:int;
      
      private var var_2006:int;
      
      private var var_2007:Boolean;
      
      private var var_2005:String;
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_2003:int;
      
      public function RoomDimmerSavePresetMessageComposer(param1:int, param2:int, param3:String, param4:int, param5:Boolean, param6:int = 0, param7:int = 0)
      {
         super();
         _roomId = param6;
         _roomCategory = param7;
         var_2006 = param1;
         var_2004 = param2;
         var_2005 = param3;
         var_2003 = param4;
         var_2007 = param5;
      }
      
      public function getMessageArray() : Array
      {
         return [var_2006,var_2004,var_2005,var_2003,int(var_2007)];
      }
      
      public function dispose() : void
      {
      }
   }
}
