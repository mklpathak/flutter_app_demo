import 'dart:async';

import 'package:demo/model/feeds.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = new DatabaseHelper.internal();

  factory DatabaseHelper() => _instance;

  final String tableReddit = 'RedditFeed';
  final String feedData = 'killer';

  static Database _db;

  DatabaseHelper.internal();

  Future<Database> get db async {
    if (_db != null) {
      return _db;
    }
    _db = await initDb();

    return _db;
  }

  initDb() async {
    String databasesPath = await getDatabasesPath();
    String path = join(databasesPath, 'reddit.db');

    //flu  await deleteDatabase(path); // just for testing

    var db = await openDatabase(path, version: 1, onCreate: _onCreate);
    return db;
  }

  void _onCreate(Database db, int newVersion) async {
    await db.execute('CREATE TABLE $tableReddit($feedData BLOB)');
  }

  Future<dynamic> deleteAll() async {
    var dbClient = await db;
    var result = await dbClient.rawQuery('DELETE FROM $tableReddit');
    return result;
  }

  Future<int> saveNote(Child note) async {
    var dbClient = await db;
    // var result = await dbClient.insert(tableReddit, note.toMap());
    var result = await dbClient
        .rawInsert('INSERT INTO $tableReddit ($feedData) VALUES (\'Hello'
            '\')');

    return result;
  }

  Future<List> getAllNotes() async {
    var dbClient = await db;
//    var result = await dbClient.query(tableReddit,
//        columns: [feedData, columnTitle, columnDescription]);
    var result = await dbClient.rawQuery('SELECT * FROM $tableReddit');

    return result.toList();
  }

  Future<int> getCount() async {
    var dbClient = await db;
    return Sqflite.firstIntValue(
        await dbClient.rawQuery('SELECT COUNT(*) FROM $tableReddit'));
  }

  Future<List> searchNotes(String search) async {
    var dbClient = await db;

    var result = await dbClient.rawQuery('SELECT * FROM $tableReddit  name '
        'LIKE %$search}%');

    return result.toList();
  }

  Future close() async {
    var dbClient = await db;
    return dbClient.close();
  }
}
