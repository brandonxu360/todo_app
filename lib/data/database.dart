import 'package:hive/hive.dart';

class ToDoDataBase {
  List toDoList = [];

  // Reference the box
  final _myBox = Hive.box('myBox');

  // Run this method if first time ever opening app
  void createInitialData() {
    toDoList = [
      ['Example task 1', false],
      ['Example task 2', false]
    ];
  }

  // Load data from database
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  void updateDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
