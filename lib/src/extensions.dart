import 'bloc_basis.dart';

extension BlocBasisX<Bloc> on BlocBasis<Bloc> {
  void close() => event.add(null);
}