import 'package:counter_bloc/counter_bloc/bloc/counter_bloc.dart';
import 'package:counter_bloc/counter_bloc/counter_bloc_page.dart';
import 'package:counter_bloc/counter_cubit/counter_cubit_page.dart';
import 'package:counter_bloc/counter_cubit/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'home_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
      routes: {
        '/bloc': (context) => BlocProvider(
          create: (context) => CounterBloc(),
          child: const CounterBlocPage()
          ),
        '/cubit': (context) => BlocProvider(
          create: (context) => CounterCubit(),
          child: const CounterCubitPage(),
          ),
      },
    );
  }
}
