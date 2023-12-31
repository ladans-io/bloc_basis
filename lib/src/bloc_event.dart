import 'package:equatable/equatable.dart';

sealed class BlocEvent<Bloc> extends Equatable {
  @override
  List<Object> get props => [];
}
sealed class EmptyEvent<Bloc> extends BlocEvent<Bloc> {}