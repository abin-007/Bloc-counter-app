import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/add_toadd_page.dart';
import 'package:project/cubit/todo_cubit.dart';
import 'package:project/todo_list.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:project/bloc/counter_bloc.dart';
// import 'package:project/cubit/counter_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TodoCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
        initialRoute: '/',
        routes: {'/': (_) => TodoList(), '/add-todo': (_) => AddTodoPage()},
      ),
    );
  }
}
