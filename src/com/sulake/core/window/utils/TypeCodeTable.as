package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_628;
         param1["bitmap"] = const_736;
         param1["border"] = const_553;
         param1["border_notify"] = const_1244;
         param1["button"] = const_381;
         param1["button_thick"] = const_525;
         param1["button_icon"] = const_1251;
         param1["button_group_left"] = const_615;
         param1["button_group_center"] = const_560;
         param1["button_group_right"] = const_609;
         param1["canvas"] = const_607;
         param1["checkbox"] = const_730;
         param1["closebutton"] = const_921;
         param1["container"] = const_280;
         param1["container_button"] = const_557;
         param1["display_object_wrapper"] = const_536;
         param1["dropmenu"] = const_427;
         param1["dropmenu_item"] = const_451;
         param1["frame"] = const_292;
         param1["frame_notify"] = const_1349;
         param1["header"] = const_550;
         param1["icon"] = const_798;
         param1["itemgrid"] = const_852;
         param1["itemgrid_horizontal"] = const_370;
         param1["itemgrid_vertical"] = const_514;
         param1["itemlist"] = const_985;
         param1["itemlist_horizontal"] = const_309;
         param1["itemlist_vertical"] = const_310;
         param1["maximizebox"] = const_1193;
         param1["menu"] = const_1347;
         param1["menu_item"] = WINDOW_TYPE_MENU_ITEM;
         param1["submenu"] = const_916;
         param1["minimizebox"] = const_1236;
         param1["notify"] = const_1278;
         param1["null"] = const_631;
         param1["password"] = const_643;
         param1["radiobutton"] = const_572;
         param1["region"] = const_368;
         param1["restorebox"] = const_1169;
         param1["scaler"] = const_808;
         param1["scaler_horizontal"] = const_1243;
         param1["scaler_vertical"] = const_1181;
         param1["scrollbar_horizontal"] = const_465;
         param1["scrollbar_vertical"] = const_616;
         param1["scrollbar_slider_button_up"] = const_960;
         param1["scrollbar_slider_button_down"] = const_811;
         param1["scrollbar_slider_button_left"] = const_906;
         param1["scrollbar_slider_button_right"] = const_833;
         param1["scrollbar_slider_bar_horizontal"] = const_996;
         param1["scrollbar_slider_bar_vertical"] = const_918;
         param1["scrollbar_slider_track_horizontal"] = const_834;
         param1["scrollbar_slider_track_vertical"] = const_934;
         param1["scrollable_itemlist"] = const_1212;
         param1["scrollable_itemlist_vertical"] = const_385;
         param1["scrollable_itemlist_horizontal"] = const_927;
         param1["selector"] = const_734;
         param1["selector_list"] = const_622;
         param1["submenu"] = const_916;
         param1["tab_button"] = const_561;
         param1["tab_container_button"] = const_880;
         param1["tab_context"] = const_394;
         param1["tab_content"] = const_923;
         param1["tab_selector"] = WINDOW_TYPE_TAB_SELECTOR;
         param1["text"] = const_568;
         param1["input"] = const_728;
         param1["toolbar"] = const_1316;
         param1["tooltip"] = const_302;
         if(param2 != null)
         {
            for(_loc3_ in param1)
            {
               if(param2[param1[_loc3_]] != null)
               {
                  Logger.log("Overlapping window type code " + _loc3_ + "!");
               }
               param2[param1[_loc3_]] = _loc3_;
            }
         }
      }
   }
}
