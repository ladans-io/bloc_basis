import 'package:equatable/equatable.dart';

sealed class BlocState<Bloc> extends Equatable {
  @override
  List<Object> get props => [];
}
sealed class EmptyState<Bloc> extends BlocState<Bloc> {}