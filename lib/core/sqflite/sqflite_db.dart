// import 'package:path/path.dart';
// import 'package:sqflite/sqflite.dart';

// //استخدام مكتبة اس كيو اف لايت

// class Sqlite {
//   static Database? _db;

//   Future<Database?> get db async {
//     if (_db == null) {
//       _db = await initialDb();
//     } else {
//       return _db!;
//     }
//   }

//   initialDb() async {
//     String databasePath = await getDatabasesPath();
//     String path = join(databasePath, 'focal-x'); // data/data/focal-x.db
//     Database myDb = await openDatabase(path, onCreate: _onCreate);
//     return myDb;
//   }

//   _onCreate(Database db, int version) async {
//     await db.execute(
//         '      CREATE TABLE Test (id INTEGER PRIMARY KEY, name TEXT, value INTEGER, num REAL)');

//     print('Its Done');
//   }

//   readData(String sql) async {
//     Database? mydb = await db;
//     List<Map> response = await mydb!.rawQuery(sql);
//     return response;
//   }

//   InsertData(String sql) async {
//     Database? mydb = await db;
//     int response = await mydb!.rawInsert(sql);
//     return response;
//   }

//   updateData(String sql) async {
//     Database? mydb = await db;
//     int response = await mydb!.rawUpdate(sql);
//     return response;
//   }

//   deleteData(String sql) async {
//     Database? mydb = await db;
//     int response = await mydb!.rawDelete(sql);
//     return response;
//   }
// }





// // // (هيك منستدعيه (لادراج البيانات
// // ElevatedButton(  
// //   onPressed: () async {  
// //     int response = await Sqflite().InsertData(  
// //       "INSERT INTO 'Test' ('name') VALUES ('ahmad')"  
// //     );  
// // print('===========\$response==========='); 
// // } 
// // child: Text('Insert Data')),



// // //(هيك منستدعيه (ليقرأ البيانات
// // ElevatedButton(   
// // onPressed: () async {  
// //   List<Map> response = await Sqflite().readData(  
// //     "SELECT * FROM 'Test' "  
// //   );  
// //   print('===========\$response===========');
// // }
// // child: Text('reed Data')),
  


// // //(هيك منستدعيه (ليحذف البيانات
// // ElevatedButton(  
// // onPressed: () async {  
// // int response = await Sqflite().InsertData(  
// //     "DELETE FROM Test WHERE name = 'ahmad'"  
// // );  
// // print('===========\$response===========');
// // }
// // child: Text('reed Data')),
  










