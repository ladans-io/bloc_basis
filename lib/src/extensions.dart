import 'bloc.dart';
import 'bloc_event.dart';

extension AddEventX<Bloc> on BlocBasis<Bloc> {
  void emit([BlocEvent<Bloc>? e]) => event.add(e ?? InitialEvent());
}

extension CloseX<Bloc> on BlocBasis<Bloc> {
  void close() => emit(CloseEvent());
}