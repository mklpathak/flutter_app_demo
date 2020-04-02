import 'dart:convert';

import 'package:demo/model/feeds.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static final _databaseName = "MyDatabase.db";
  static final _databaseVersion = 1;

  static final table = 'RedditFeeds';

  static final columnName = 'feedObject';

  DatabaseHelper._privateConstructor();
  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();

  static Database _database;
  Future<Database> get database async {
    if (_database != null) return _database;
    _database = await _initDatabase();
    return _database;
  }

  // this opens the database (and creates it if it doesn't exist)
  _initDatabase() async {
//        Directory documentsDirectory = await getApplicationDocumentsDirectory();
//        String path = join(documentsDirectory.path, _databaseName);

    String databasesPath = await getDatabasesPath();
    String path = join(databasesPath, _databaseName);
    return await openDatabase(path,
        version: _databaseVersion, onCreate: _onCreate);
  }

  Future _onCreate(Database db, int version) async {
    await db.execute('''
          CREATE TABLE $table (
            $columnName TEXT NOT NULL
          )
          ''');
  }

  // Helper methods

  // Inserts a row in the database where each key in the Map is a column name
  // and the value is the column value. The return value is the id of the
  // inserted row.
  Future<int> clearTable() async {
    Database db = await instance.database;
    return await db.delete(table);
  }

  Future<int> insert(Child child) async {
    Map<String, dynamic> data = Map();
    data['$columnName'] = jsonEncode(child.toMap());
    Database db = await instance.database;
    return await db.insert(table, data);
  }

  Future<List<Child>> queryAllRows() async {
    Database db = await instance.database;

    var result = await db.query(table);
    return result.map((data) {
      return Child.fromMap(jsonDecode(data[columnName]));
    }).toList();
  }

  Future<List<Child>> searchData(String search) async {
    Database db = await instance.database;

    var res = await db
        .rawQuery("SELECT * FROM $table WHERE $columnName LIKE '%$search%'");

    return res.map((data) {
      return Child.fromMap(jsonDecode(data[columnName]));
    }).toList();
  }

  Future<int> queryRowCount() async {
    Database db = await instance.database;
    return Sqflite.firstIntValue(
        await db.rawQuery('SELECT COUNT(*) FROM $table'));
  }
}
