import '../../model/estabelecimento.dart';

abstract class EstabelecimentoRepository {
  List<Estabelecimento> getListaEstabelecimentos();
}
