package com.sulake.habbo.widget.messages
{
   public class RoomWidgetDimmerSavePresetMessage extends RoomWidgetMessage
   {
      
      public static const const_674:String = "RWSDPM_SAVE_PRESET";
       
      
      private var _color:uint;
      
      private var var_2004:int;
      
      private var var_2006:int;
      
      private var var_2177:Boolean;
      
      private var var_1052:int;
      
      public function RoomWidgetDimmerSavePresetMessage(param1:int, param2:int, param3:uint, param4:int, param5:Boolean)
      {
         super(const_674);
         var_2006 = param1;
         var_2004 = param2;
         _color = param3;
         var_1052 = param4;
         var_2177 = param5;
      }
      
      public function get color() : uint
      {
         return _color;
      }
      
      public function get effectTypeId() : int
      {
         return var_2004;
      }
      
      public function get presetNumber() : int
      {
         return var_2006;
      }
      
      public function get brightness() : int
      {
         return var_1052;
      }
      
      public function get apply() : Boolean
      {
         return var_2177;
      }
   }
}
