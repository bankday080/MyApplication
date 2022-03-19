// import 'package:flutter/foundation.dart';
// import 'package:flutter_application_1/database/transaction_db.dart';
// import 'package:flutter_application_1/provider/transaction_provider.dart';

// import '../model/transactions.dart';

// class TransactionProvider with ChangeNotifier{
//     // ตัวอย่างข้อมูล
//       List<Transactions> transactions = [];

//       // ดึงข้อมูล
//       List<Transactions> getTransaction(){
//         return transactions;
//       }
//       void initData() async{
//           var db=TransactionDB(dbName: "transactions.db");
//           //ดึงข้อมูลมาแสดงผล
//           transactions=(await db.loadAllData()) as List<Transactions>;
//           notifyListeners();
//       }
      
//       void addTransaction(Transactions statement) async{
//           var db=TransactionDB(dbName: "transactions.db");
//           //บันทึกข้อมูล
//           await db.InsertData(statement);
//           //ดึงข้อมูลมาแสดงผล
//           transactions=(await db.loadAllData()) as List<Transactions>;
//           //แจ้งเตือน Consumer
//           notifyListeners();
//       }
// }