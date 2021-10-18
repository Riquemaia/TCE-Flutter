import 'package:mobx/mobx.dart';

import 'package:feneco_fiap_tce_app/feature/services/DespesaAnual/interface_despesa_anual_service.dart';
import 'package:feneco_fiap_tce_app/feature/models/Request/despesa_anual_request.dart';
import 'package:feneco_fiap_tce_app/feature/models/DespesaAnual/despesa_anual_model.dart';

part 'despesa_anual_view_model.g.dart';

class DespesaAnualViewModel = _DespesaAnualViewModelBase
    with _$DespesaAnualViewModel;

abstract class _DespesaAnualViewModelBase with Store {
  @observable
  bool isLoading = true;

  @observable
  DespesaAnualRequest despesaAnualRequest = DespesaAnualRequest();

  @observable
  ObservableList<DespesaAnualModel> data = ObservableList.of([]);

  List<DespesaAnualModel>? list;

  IDespesasAnualService service;

  @observable
  String filtro = "";

  _DespesaAnualViewModelBase({
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
    despesaAnualRequest = await service.fecthData();
    data = despesaAnualRequest.data!.asObservable();
    changeLoading();
  }
}
