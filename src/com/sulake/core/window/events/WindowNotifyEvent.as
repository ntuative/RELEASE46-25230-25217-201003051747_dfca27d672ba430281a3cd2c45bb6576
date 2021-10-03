package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowNotifyEvent extends WindowEvent
   {
      
      public static const const_1154:String = "WN_CREATED";
      
      public static const const_819:String = "WN_DISABLE";
      
      public static const const_945:String = "WN_DEACTIVATED";
      
      public static const const_1001:String = "WN_OPENED";
      
      public static const const_791:String = "WN_CLOSED";
      
      public static const const_943:String = "WN_DESTROY";
      
      public static const const_1437:String = "WN_ARRANGED";
      
      public static const const_398:String = "WN_PARENT_RESIZED";
      
      public static const const_969:String = "WN_ENABLE";
      
      public static const const_805:String = "WN_RELOCATE";
      
      public static const const_832:String = "WN_FOCUS";
      
      public static const const_853:String = "WN_PARENT_RELOCATED";
      
      public static const const_460:String = "WN_PARAM_UPDATED";
      
      public static const const_709:String = "WN_PARENT_ACTIVATED";
      
      public static const const_208:String = "WN_RESIZED";
      
      public static const const_815:String = "WN_CLOSE";
      
      public static const const_790:String = "WN_PARENT_REMOVED";
      
      public static const const_232:String = "WN_CHILD_RELOCATED";
      
      public static const const_614:String = "WN_ENABLED";
      
      public static const const_262:String = "WN_CHILD_RESIZED";
      
      public static const const_789:String = "WN_MINIMIZED";
      
      public static const const_527:String = "WN_DISABLED";
      
      public static const const_215:String = "WN_CHILD_ACTIVATED";
      
      public static const const_432:String = "WN_STATE_UPDATED";
      
      public static const const_713:String = "WN_UNSELECTED";
      
      public static const const_395:String = "WN_STYLE_UPDATED";
      
      public static const const_1458:String = "WN_UPDATE";
      
      public static const const_409:String = "WN_PARENT_ADDED";
      
      public static const const_689:String = "WN_RESIZE";
      
      public static const const_626:String = "WN_CHILD_REMOVED";
      
      public static const const_1542:String = "";
      
      public static const const_973:String = "WN_RESTORED";
      
      public static const const_306:String = "WN_SELECTED";
      
      public static const const_937:String = "WN_MINIMIZE";
      
      public static const const_814:String = "WN_FOCUSED";
      
      public static const const_1335:String = "WN_LOCK";
      
      public static const const_334:String = "WN_CHILD_ADDED";
      
      public static const const_804:String = "WN_UNFOCUSED";
      
      public static const const_402:String = "WN_RELOCATED";
      
      public static const const_939:String = "WN_DEACTIVATE";
      
      public static const const_1220:String = "WN_CRETAE";
      
      public static const const_977:String = "WN_RESTORE";
      
      public static const const_297:String = "WN_ACTVATED";
      
      public static const const_1225:String = "WN_LOCKED";
      
      public static const const_364:String = "WN_SELECT";
      
      public static const const_802:String = "WN_MAXIMIZE";
      
      public static const const_813:String = "WN_OPEN";
      
      public static const const_683:String = "WN_UNSELECT";
      
      public static const const_1601:String = "WN_ARRANGE";
      
      public static const const_1208:String = "WN_UNLOCKED";
      
      public static const const_1485:String = "WN_UPDATED";
      
      public static const const_949:String = "WN_ACTIVATE";
      
      public static const const_1358:String = "WN_UNLOCK";
      
      public static const const_806:String = "WN_MAXIMIZED";
      
      public static const const_935:String = "WN_DESTROYED";
      
      public static const const_966:String = "WN_UNFOCUS";
       
      
      public function WindowNotifyEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false)
      {
         super(param1,param2,param3,false,param4);
      }
      
      override public function toString() : String
      {
         return formatToString("WindowNotifyEvent","type","cancelable");
      }
      
      override public function clone() : Event
      {
         return new WindowNotifyEvent(type,_window,var_1587,cancelable);
      }
   }
}
