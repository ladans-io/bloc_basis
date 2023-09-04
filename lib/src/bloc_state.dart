import 'package:equatable/equatable.dart';

abstract class BlocState<Bloc> extends Equatable {
  @override
  List<Object> get props => [];
}
class EmptyState<Bloc> extends BlocState<Bloc> {}