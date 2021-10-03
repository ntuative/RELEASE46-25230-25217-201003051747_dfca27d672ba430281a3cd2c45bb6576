package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowEvent extends Event
   {
      
      public static const const_301:String = "WE_CHILD_RESIZED";
      
      public static const const_1184:String = "WE_CLOSE";
      
      public static const const_1346:String = "WE_DESTROY";
      
      public static const const_146:String = "WE_CHANGE";
      
      public static const const_1289:String = "WE_RESIZE";
      
      public static const WINDOW_EVENT_MESSAGE:String = "WE_MESSAGE";
      
      public static const const_1436:String = "WE_PARENT_RESIZE";
      
      public static const const_92:String = "WE_UPDATE";
      
      public static const const_1334:String = "WE_MAXIMIZE";
      
      public static const const_449:String = "WE_DESTROYED";
      
      public static const const_930:String = "WE_UNSELECT";
      
      public static const const_1159:String = "WE_MAXIMIZED";
      
      public static const const_1579:String = "WE_UNLOCKED";
      
      public static const const_413:String = "WE_CHILD_REMOVED";
      
      public static const const_171:String = "WE_OK";
      
      public static const const_43:String = "WE_RESIZED";
      
      public static const const_1340:String = "WE_ACTIVATE";
      
      public static const const_271:String = "WE_ENABLED";
      
      public static const const_450:String = "WE_CHILD_RELOCATED";
      
      public static const const_1362:String = "WE_CREATE";
      
      public static const const_673:String = "WE_SELECT";
      
      public static const const_163:String = "";
      
      public static const const_1450:String = "WE_LOCKED";
      
      public static const const_1492:String = "WE_PARENT_RELOCATE";
      
      public static const const_1532:String = "WE_CHILD_REMOVE";
      
      public static const const_1490:String = "WE_CHILD_RELOCATE";
      
      public static const const_1494:String = "WE_LOCK";
      
      public static const const_214:String = "WE_FOCUSED";
      
      public static const const_510:String = "WE_UNSELECTED";
      
      public static const const_992:String = "WE_DEACTIVATED";
      
      public static const const_1376:String = "WE_MINIMIZED";
      
      public static const const_1603:String = "WE_ARRANGED";
      
      public static const const_1493:String = "WE_UNLOCK";
      
      public static const const_1588:String = "WE_ATTACH";
      
      public static const const_1354:String = "WE_OPEN";
      
      public static const const_1305:String = "WE_RESTORE";
      
      public static const const_1597:String = "WE_PARENT_RELOCATED";
      
      public static const const_1325:String = "WE_RELOCATE";
      
      public static const const_1498:String = "WE_CHILD_RESIZE";
      
      public static const const_1544:String = "WE_ARRANGE";
      
      public static const const_1249:String = "WE_OPENED";
      
      public static const const_1381:String = "WE_CLOSED";
      
      public static const const_1518:String = "WE_DETACHED";
      
      public static const const_1431:String = "WE_UPDATED";
      
      public static const const_1377:String = "WE_UNFOCUSED";
      
      public static const const_375:String = "WE_RELOCATED";
      
      public static const const_1135:String = "WE_DEACTIVATE";
      
      public static const const_210:String = "WE_DISABLED";
      
      public static const const_667:String = "WE_CANCEL";
      
      public static const const_535:String = "WE_ENABLE";
      
      public static const const_1326:String = "WE_ACTIVATED";
      
      public static const const_1217:String = "WE_FOCUS";
      
      public static const const_1545:String = "WE_DETACH";
      
      public static const const_1259:String = "WE_RESTORED";
      
      public static const const_1228:String = "WE_UNFOCUS";
      
      public static const const_50:String = "WE_SELECTED";
      
      public static const const_1241:String = "WE_PARENT_RESIZED";
      
      public static const const_1282:String = "WE_CREATED";
      
      public static const const_1526:String = "WE_ATTACHED";
      
      public static const const_1262:String = "WE_MINIMIZE";
      
      public static const WINDOW_EVENT_DISABLE:String = "WE_DISABLE";
       
      
      protected var _type:String = "";
      
      protected var var_1587:IWindow;
      
      protected var _window:IWindow;
      
      protected var var_1368:Boolean;
      
      public function WindowEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false, param5:Boolean = false)
      {
         _type = param1;
         _window = param2;
         var_1587 = param3;
         var_1368 = false;
         super(param1,param4,param5);
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return var_1368;
      }
      
      public function get related() : IWindow
      {
         return var_1587;
      }
      
      public function get window() : IWindow
      {
         return _window;
      }
      
      public function set type(param1:String) : void
      {
         _type = param1;
      }
      
      override public function get type() : String
      {
         return _type;
      }
      
      override public function toString() : String
      {
         return formatToString("WindowEvent","type","bubbles","cancelable","window");
      }
      
      override public function clone() : Event
      {
         return new WindowEvent(_type,window,related,bubbles,cancelable);
      }
      
      public function preventWindowOperation() : void
      {
         if(cancelable)
         {
            var_1368 = true;
            stopImmediatePropagation();
            return;
         }
         throw new Error("Attempted to prevent window operation that is not canceable!");
      }
   }
}
