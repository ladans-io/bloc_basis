//  ignore_for_file: prefer-match-file-name

import 'bloc_basis.dart';
import 'bloc_event.dart';

extension BlocBasisX<Bloc> on BlocBasis<Bloc> {
  void closeLastState() {
    event.add(EmptyEvent<Bloc>());
  }
}