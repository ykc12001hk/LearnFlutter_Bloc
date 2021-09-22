import 'package:bloc/bloc.dart';

import 'counter_event.dart';

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc(int initialState) : super(initialState);

  @override
  Stream<int> mapEventToState(CounterEvent event) async* {
    if (event is IncreamentEvent)
      yield state + 1;
    else
      yield state - 1;
  }
}
