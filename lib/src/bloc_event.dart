import 'package:equatable/equatable.dart';

abstract class BlocEvent<Bloc> extends Equatable {
  @override
  List<Object> get props => [];
}
class EmptyEvent<Bloc> extends BlocEvent<Bloc> {}