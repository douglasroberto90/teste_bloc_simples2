import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teste_bloc_simples2/Blocs/counter_cubit.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter Bloc - Contador')),
      body: BlocBuilder<CounterCubit, int>(
        builder: (context, contador) {
          return Center(
            child: Text(
              'Contagem: $contador',
              style: TextStyle(fontSize: 24),
            ),
          );
        },
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () =>
                context.read<CounterCubit>().incrementar(),
          ),
          SizedBox(height: 10),
          FloatingActionButton(
            onPressed: () =>
                context.read<CounterCubit>().decrementar(),
            child: Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
