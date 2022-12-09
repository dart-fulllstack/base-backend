import 'application/web/estabelecimento_controller.dart';
import 'domain/port/input/estabelecimento_service.dart';
import 'domain/port/output/estabelecimento_repository.dart';
import 'domain/services/estabelecimento_service_imp.dart';
import 'infraestructure/inMemory/estabelecimento_mapper.dart';
import 'infraestructure/inMemory/estabelecimento_repository_imp.dart';

void main(List<String> args) {
  EstabelecimentoRepository _estabelecimentoRepository =
      EstabelecimentoRepositoryImp(EstabelecimentoMapper());
  EstabelecimentoService _estabelecimentoService =
      EstabelecimentoServiceImp(_estabelecimentoRepository);
  EstabelecimentoController _controller =
      EstabelecimentoController(_estabelecimentoService);

  _controller.getAll();
}
