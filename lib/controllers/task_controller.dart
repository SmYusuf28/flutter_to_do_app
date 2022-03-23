import 'package:flutter_to_do_app/db/db_helper.dart';
import 'package:flutter_to_do_app/models/task_model.dart';
import 'package:get/get.dart';

class TaskController extends GetxController {
  @override
  void onReady() {
    super.onReady();
  }

  var taskList = <TaskModel>[].obs;

  // get all data from table
  void getTasks() async {
    List<Map<String, dynamic>> tasks = await DBHelper.query();
    taskList
        .assignAll(tasks.map((data) => new TaskModel.fromJson(data)).toList());
  }

  Future<int?> addTask(TaskModel task) async {
    return await DBHelper.insert(task);
  }

  void delete(TaskModel task) {
    DBHelper.delete(task);
    getTasks();
  }

  void markTaskCompleted(int id) async {
    await DBHelper.update(id);
    getTasks();
  }
}
