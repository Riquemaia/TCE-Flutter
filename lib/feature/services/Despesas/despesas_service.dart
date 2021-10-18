import 'package:dio/dio.dart';
import 'package:feneco_fiap_tce_app/core/services/service_path.dart';
import 'package:feneco_fiap_tce_app/feature/models/Request/despesa_request.dart';

import 'interface_despesas_service.dart';

class DespesasService extends IDespesasService {
  DespesasService(Dio service) : super(service);

  @override
  Future<DespesaRequest> fecthData() async {
    final response = await service.get(ServicePath.DESPESA.rawValue);
    if (response.statusCode == 200) {
      DespesaRequest responseData = DespesaRequest.fromJson(response.data);
      return responseData;
    } else {
      return DespesaRequest();
    }
  }
}
