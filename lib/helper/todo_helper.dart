import 'dart:convert';

import 'package:login_page/modal/todo_modal.dart';
import 'package:http/http.dart' as http;

class TodoHelper {
  TodoHelper._();

  static final TodoHelper instance = TodoHelper._();

  String ApiLink = "https://dummyjson.com/todos";

  Future<List<Todo>> getTodos() async {
    List<Todo> todoList = [];
    http.Response response = await http.get(Uri.parse(ApiLink));

    if (response.statusCode == 200) {
      Map data = jsonDecode(response.body);
      List list = data["todos"];
      todoList = list.map((e) => Todo.fromJson(e)).toList();
    }
    return todoList;
  }
}
