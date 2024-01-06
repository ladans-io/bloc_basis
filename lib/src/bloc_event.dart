import 'package:equatable/equatable.dart';

base class BlocEvent<Bloc> extends Equatable {
  @override
  List<Object> get props => [];
}
final class InitialEvent<Bloc> extends BlocEvent<Bloc> {}
final class CloseEvent<Bloc> extends BlocEvent<Bloc> {}