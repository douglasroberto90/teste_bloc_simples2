import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  void incrementar() => emit(state + 1);
  void decrementar() => emit(state - 1);

}