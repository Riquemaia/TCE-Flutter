import 'package:dio/dio.dart';
import 'package:feneco_fiap_tce_app/core/services/service_path.dart';
import 'package:feneco_fiap_tce_app/feature/models/Request/despesa_anual_request.dart';
import 'package:feneco_fiap_tce_app/feature/services/DespesaAnual/interface_despesa_anual_service.dart';

class DespesaAnualService extends IDespesasAnualService {
  DespesaAnualService(Dio service) : super(service);

  @override
  Future<DespesaAnualRequest> fecthData() async {
    final response = await service.get(ServicePath.DESPESAANUAL.rawValue);
    if (response.statusCode == 200) {
      DespesaAnualRequest responseData =
          DespesaAnualRequest.fromJson(response.data);
      return responseData;
    } else {
      return DespesaAnualRequest();
    }
  }
}
