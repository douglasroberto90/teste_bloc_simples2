import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'Blocs/counter_cubit.dart';
import 'package:teste_bloc_simples2/pages/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => CounterCubit(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Fluttertube',
          theme: ThemeData(
            colorScheme: ColorScheme.dark(),
            useMaterial3: true,
          ),
          home: HomePage(),
        )
    );
  }
}
