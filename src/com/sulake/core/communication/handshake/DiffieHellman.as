package com.sulake.core.communication.handshake
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_1147:BigInteger;
      
      private var var_701:BigInteger;
      
      private var var_1417:BigInteger;
      
      private var var_1418:BigInteger;
      
      private var var_1731:BigInteger;
      
      private var var_1730:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         var_1147 = param1;
         var_1417 = param2;
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return var_1731.toRadix(param1);
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         var_1418 = new BigInteger();
         var_1418.fromRadix(param1,param2);
         var_1731 = var_1418.modPow(var_701,var_1147);
         return getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return var_1730.toRadix(param1);
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + var_1147.toString() + ",generator: " + var_1417.toString() + ",secret: " + param1);
         var_701 = new BigInteger();
         var_701.fromRadix(param1,param2);
         var_1730 = var_1417.modPow(var_701,var_1147);
         return true;
      }
   }
}
