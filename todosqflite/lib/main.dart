import 'Task.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
//import 'package:todosqflite/Task.dart';

insertTaskDeails(Task obj) async {
  dynamic localDB = await database;
  localDB.insert(
    'taskDB',
    obj.taskMap,
    ConflictAlgorithm: ConflictAlgorithm.replace,
  );
}

Future< List<Map<String,dynamic>>> getTaskDetails() async {
  dynamic localDB = await database;

  List<Map<String,dynamic>> listOfTasks = await localDB.query(
    "taskDB",
  );
  return listOfTasks;
}

dynamic database;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  database = openDatabase(
    join(await getDatabasesPath(), "taskDB.db"),
    version: 1,
    onCreate: (db, version) {
      db.execute('''
        Create table Task(
        taskNo INT PRIMARY KEY,
        title TEXT,
        description TEXT,
        date TEXT
        
        )
    ''');

      Task obj1 = Task(
          taskNo: 1,
          title: "java",
          description: "data hiding , encapsulation",
          date: "10 july 2024");

      insertTaskDeails(obj1);
      print(getTaskDetails());
    },
  );
}
