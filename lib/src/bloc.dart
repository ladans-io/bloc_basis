import 'package:rxdart/rxdart.dart';

import 'bloc_event.dart';
import 'bloc_state.dart';

abstract base class BlocBasis<Bloc> {
  BlocBasis() {
    state = BehaviorSubject();
    event = BehaviorSubject()
      ..switchMap(_mapper)
       .listen((s) => state.add(s!));
  }

  BehaviorSubject<BlocEvent<Bloc>> get event;
  set event(BehaviorSubject<BlocEvent<Bloc>> event);

  BehaviorSubject<BlocState<Bloc>> get state;
  set state(BehaviorSubject<BlocState<Bloc>> state);

  Stream<BlocState<Bloc>?> _mapper(BlocEvent<Bloc> e) {
    if (e is CloseEvent<Bloc>) return Stream.value(ClosedState());

    return eventMapper(e);
  }

  Stream<BlocState<Bloc>> eventMapper(BlocEvent<Bloc> e);

  Future<void> dispose(); 
}