import 'package:feneco_fiap_tce_app/feature/services/Municipios/interface_municipio_service.dart';
import 'package:feneco_fiap_tce_app/feature/models/Request/municipio_http_request.dart';
import 'package:mobx/mobx.dart';

part 'municipio_view_model.g.dart';

class MunicipioViewModel = _MunicipioViewModelBase with _$MunicipioViewModel;

abstract class _MunicipioViewModelBase with Store {
  @observable
  bool isLoading = true;

  @observable
  MunicipioRequest municipioRequest = MunicipioRequest();

  IMunicipioService service;

  _MunicipioViewModelBase({
    required this.service,
  }) {
    fetchDatas();
  }

  @action
  void changeLoading() {
    isLoading = !isLoading;
  }

  @action
  Future<void> fetchDatas() async {
    municipioRequest = await service.fecthData();
    changeLoading();
  }
}
