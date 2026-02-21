
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/models/todo_models.dart';
import 'package:project/todo_list.dart';

class TodoCubit extends Cubit<List<TodoModels>> {
  TodoCubit() : super([]);

  void addToDo(String title){
    final todo = TodoModels(name: title, date: DateTime.now());

    emit([...state, todo]);

 

  }

  @override
  void onChange(Change<List<TodoModels>> change) {
   
    super.onChange(change);
  }
}
