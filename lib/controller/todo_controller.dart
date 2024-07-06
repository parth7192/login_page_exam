import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:login_page/modal/todo_modal.dart';

import '../helper/todo_helper.dart';

class TodoController extends GetxController {
  RxList<Todo> todoList = <Todo>[].obs;

  Future<void> getTodoList() async {
    todoList.value = await TodoHelper.instance.getTodos();
    update();
  }
}
