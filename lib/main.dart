import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/cubit/counter_cubit.dart';
import 'package:project/my_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_)=>CounterCubit(),
      
        child:  MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
          home: const MyHomePage(title: 'Flutter Demo Home Page'),
        )
      
    );
  }
}

