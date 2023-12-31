import 'package:rxdart/rxdart.dart';

import 'bloc_event.dart';
import 'bloc_state.dart';

sealed class BlocBasis<Bloc> {
  BlocBasis() {
    state = BehaviorSubject();
    event = BehaviorSubject();
    event.switchMap(_mapper).listen((s) => state.add(s!));
  }

  BehaviorSubject<BlocEvent<Bloc>?> get event;
  set event(BehaviorSubject<BlocEvent<Bloc>?> event);

  BehaviorSubject<BlocState<Bloc>> get state;
  set state(BehaviorSubject<BlocState<Bloc>> state);

  Stream<BlocState<Bloc>?> _mapper(BlocEvent<Bloc>? e) {
    return e is EmptyEvent<Bloc> 
      ? Stream.value(null)
      : mapEventToState(e!);
  }

  Stream<BlocState<Bloc>> mapEventToState(BlocEvent<Bloc> e);

  Future<void> dispose(); 
}