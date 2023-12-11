import 'package:flutter_bloc/flutter_bloc.dart';
part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(const CounterState(value: 0));

  void incrementCounter() => emit(CounterState(value: state.value + 1));
  void decrementCounter(){
    if(state.value > 0){
      emit(CounterState(value: state.value - 1));
    }
  }
}
