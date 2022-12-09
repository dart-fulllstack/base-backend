import '../../domain/model/estabelecimento.dart';
import '../../domain/port/output/estabelecimento_repository.dart';
import 'estabelecimento_mapper.dart';

class EstabelecimentoRepositoryImp implements EstabelecimentoRepository {
  final EstabelecimentoMapper _estabelecimentoMapper;
  EstabelecimentoRepositoryImp(this._estabelecimentoMapper);

  List<Map> fakeDB = [
    {
      'nome': 'Estabelecimento XPTO',
      'cnpj': '12345678912345',
    },
    {
      'nome': 'Estabelecimento dois',
      'cnpj': '12345678912345',
    },
  ];

  @override
  List<Estabelecimento> getListaEstabelecimentos() {
    // trata todas as chamadas ao mundo externo relacionado a infra
    return fakeDB.map((e) {
      print(e);
      return _estabelecimentoMapper.toDomain(e);
    }).toList();
  }
}
