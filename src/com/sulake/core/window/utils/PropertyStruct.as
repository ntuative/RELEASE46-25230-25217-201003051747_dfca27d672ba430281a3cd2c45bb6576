package com.sulake.core.window.utils
{
   import com.sulake.core.utils.Map;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.getQualifiedClassName;
   
   public class PropertyStruct
   {
      
      public static const const_639:String = "Rectangle";
      
      public static const const_55:String = "Boolean";
      
      public static const const_627:String = "Number";
      
      public static const const_63:String = "int";
      
      public static const STRING:String = "String";
      
      public static const const_520:String = "Point";
      
      public static const const_816:String = "Array";
      
      public static const const_999:String = "uint";
      
      public static const const_362:String = "hex";
      
      public static const const_941:String = "Map";
       
      
      private var var_588:String;
      
      private var var_177:Object;
      
      private var var_2324:Boolean;
      
      private var _type:String;
      
      private var var_2100:Boolean;
      
      public function PropertyStruct(param1:String, param2:Object, param3:String, param4:Boolean)
      {
         super();
         var_588 = param1;
         var_177 = param2;
         _type = param3;
         var_2100 = param4;
         var_2324 = param3 == const_941 || param3 == const_816 || param3 == const_520 || param3 == const_639;
      }
      
      public function get type() : String
      {
         return _type;
      }
      
      public function toString() : String
      {
         switch(_type)
         {
            case const_362:
               return "0x" + uint(var_177).toString(16);
            case const_55:
               return Boolean(var_177) == true ? "true" : "false";
            case const_520:
               return "Point(" + Point(var_177).x + ", " + Point(var_177).y + ")";
            case const_639:
               return "Rectangle(" + Rectangle(var_177).x + ", " + Rectangle(var_177).y + ", " + Rectangle(var_177).width + ", " + Rectangle(var_177).height + ")";
            default:
               return String(value);
         }
      }
      
      public function toXMLString() : String
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         switch(_type)
         {
            case const_941:
               _loc3_ = var_177 as Map;
               _loc1_ = "<var key=\"" + var_588 + "\">\r<value>\r<" + _type + ">\r";
               _loc2_ = 0;
               while(_loc2_ < _loc3_.length)
               {
                  _loc1_ += "<var key=\"" + _loc3_.getKey(_loc2_) + "\" value=\"" + _loc3_.getWithIndex(_loc2_) + "\" type=\"" + getQualifiedClassName(_loc3_.getWithIndex(_loc2_)) + "\" />\r";
                  _loc2_++;
               }
               _loc1_ += "</" + _type + ">\r</value>\r</var>";
               break;
            case const_816:
               _loc4_ = var_177 as Array;
               _loc1_ = "<var key=\"" + var_588 + "\">\r<value>\r<" + _type + ">\r";
               _loc2_ = 0;
               while(_loc2_ < _loc4_.length)
               {
                  _loc1_ += "<var key=\"" + String(_loc2_) + "\" value=\"" + _loc4_[_loc2_] + "\" type=\"" + getQualifiedClassName(_loc4_[_loc2_]) + "\" />\r";
                  _loc2_++;
               }
               _loc1_ += "</" + _type + ">\r</value>\r</var>";
               break;
            case const_520:
               _loc5_ = var_177 as Point;
               _loc1_ = "<var key=\"" + var_588 + "\">\r<value>\r<" + _type + ">\r";
               _loc1_ += "<var key=\"x\" value=\"" + _loc5_.x + "\" type=\"" + const_63 + "\" />\r";
               _loc1_ += "<var key=\"y\" value=\"" + _loc5_.y + "\" type=\"" + const_63 + "\" />\r";
               _loc1_ += "</" + _type + ">\r</value>\r</var>";
               break;
            case const_639:
               _loc6_ = var_177 as Rectangle;
               _loc1_ = "<var key=\"" + var_588 + "\">\r<value>\r<" + _type + ">\r";
               _loc1_ += "<var key=\"x\" value=\"" + _loc6_.x + "\" type=\"" + const_63 + "\" />\r";
               _loc1_ += "<var key=\"y\" value=\"" + _loc6_.y + "\" type=\"" + const_63 + "\" />\r";
               _loc1_ += "<var key=\"width\" value=\"" + _loc6_.width + "\" type=\"" + const_63 + "\" />\r";
               _loc1_ += "<var key=\"height\" value=\"" + _loc6_.height + "\" type=\"" + const_63 + "\" />\r";
               _loc1_ += "</" + _type + ">\r</value>\r</var>";
               break;
            case const_362:
               _loc1_ = "<var key=\"" + var_588 + "\" value=\"" + "0x" + uint(var_177).toString(16) + "\" type=\"" + _type + "\" />";
               break;
            default:
               _loc1_ = "<var key=\"" + var_588 + "\" value=\"" + var_177 + "\" type=\"" + _type + "\" />";
         }
         return _loc1_;
      }
      
      public function get value() : Object
      {
         return var_177;
      }
      
      public function get valid() : Boolean
      {
         return var_2100;
      }
      
      public function get key() : String
      {
         return var_588;
      }
   }
}
