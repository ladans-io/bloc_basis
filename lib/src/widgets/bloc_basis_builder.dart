import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

import '../bloc_state.dart';

class BlocBasisBuilder<Bloc> extends StatelessWidget {

  const BlocBasisBuilder({
    Key? key,
    this.initialState,
    this.defaultChild,
    required this.blocBuilder,
    required this.listenState,
  }) : super(key: key);

  final BlocState<Bloc>? initialState;

  final Widget? defaultChild;

  final Widget Function(BuildContext, BlocState<Bloc>?) blocBuilder;

  final BehaviorSubject<BlocState<Bloc>>? listenState;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<BlocState<Bloc>>(
      initialData: initialState,
      stream: listenState,
      builder: (context, snapshot) {
        if (defaultChild != null) {
          if (snapshot.hasData) {
            return blocBuilder(context, snapshot.data!);
          }
          
          return defaultChild!;
        } else {
          return blocBuilder(context, snapshot.data);
        }
      },
    );
  }
}