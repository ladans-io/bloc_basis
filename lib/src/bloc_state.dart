import 'package:equatable/equatable.dart';

base class BlocState<Bloc> extends Equatable {
  @override
  List<Object> get props => [];
}
final class ClosedState<Bloc> extends BlocState<Bloc> {}