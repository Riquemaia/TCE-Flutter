import 'package:feneco_fiap_tce_app/feature/services/Despesas/interface_despesas_service.dart';
import 'package:mobx/mobx.dart';

import 'package:feneco_fiap_tce_app/feature/models/Request/despesa_request.dart';

part 'despesa_view_model.g.dart';

class DespesaViewModel = _DespesaViewModelBase with _$DespesaViewModel;

abstract class _DespesaViewModelBase with Store {
  @observable
  bool isLoading = true;

  @observable
  DespesaRequest despesaRequest = DespesaRequest();

  IDespesasService service;

  _DespesaViewModelBase({required this.service}) {
    fetchDatas();
  }

  @action
  void changeLoading() {
    isLoading = !isLoading;
  }

  @action
  Future<void> fetchDatas() async {
    despesaRequest = await service.fecthData();
    changeLoading();
  }
}
