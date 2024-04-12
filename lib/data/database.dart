import 'package:hive/hive.dart';

class TodoDatabase {
  List todoList = [];
  // reference the box
  final _myBox = Hive.box('mybox');

// run this method if this is the 1st time ever opening this app.
  void createInitialData() {
    todoList = [
      ["Make Tutorial", false],
      ["Do Excercise", false]
    ];
  }

  // load the data from database
  void loadData() {
    todoList = _myBox.get('TODOLIST');
  }

  // update the database
  void updateDatabase() {
    _myBox.put('TODOLIST', todoList);
  }
}
