// import 'dart:io';

// import 'package:flutter_application_1/model/transactions.dart';
// import 'package:path/path.dart';
// import 'package:path_provider/path_provider.dart';
// import 'package:sembast/sembast.dart';
// import 'package:sembast/sembast_io.dart';

// class TransactionDB {
//   //บริการเกียวกับฐานข้อมูล

//   String dbName; //เก็บชื่อฐานข้อมูล

//   // ถ้ายังไม่ถูกสร้าง => สร้าง
//   // ถูกสร้างไว้แล้ว => เปิด
//   TransactionDB({required this.dbName});

//   Future<Database> openDatabase() async {
//     //หาตำแหน่งที่จะเก็บข้อมูล
//     Directory appDirectory = await getApplicationDocumentsDirectory();
//     String dbLocation = join(appDirectory.path, dbName);
//     // สร้าง database
//     DatabaseFactory dbFactory = await databaseFactoryIo;
//     Database db = await dbFactory.openDatabase(dbLocation);
//     return db;
//   }

//   //บันทึกข้อมูล
//   Future<int> InsertData(Transactions statement) async {
//     //ฐานข้อมูล => Store
//     // transaction.db => expense
//     var db = await this.openDatabase();
//     var store = intMapStoreFactory.store("expense");

//     // json
//     var keyID = store.add(db, {
//       "name": statement.name,
//       "farm name": statement.farm_name,
//       "user name": statement.user_name.toIso8601String()
//     });
//     db.close();
//     return keyID;
//   }

//   //ดึงข้อมูล

//   // ใหม่ => เก่า false มาก => น้อย
//   // เก่า => ใหม่ true น้อย => มาก
//   Future<Function<Transactions>()> loadAllData() async {
//     var db = await this.openDatabase();
//     var store = intMapStoreFactory.store("expense");
//     var snapshot = await store.find(db,
//         finder: Finder(sortOrders: [SortOrder(Field.key, false)]));
//     Function<Transactions>() transactionList = <Transactions>();
//     //ดึงมาทีละแถว
//     for (var record in snapshot) {
//       transactionList.add(Transactions(
//           name: record!["title"],
//           farm_name: record!["amount"],
//           user_name: record!["date"]
//         )
//       );
//     }
//     return transactionList;
//   }
// }
