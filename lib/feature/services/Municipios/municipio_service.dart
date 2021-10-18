import 'package:dio/dio.dart';
import 'package:feneco_fiap_tce_app/core/services/service_path.dart';

import 'package:feneco_fiap_tce_app/feature/models/Request/municipio_http_request.dart';

import 'interface_municipio_service.dart';

class MunicipioService extends IMunicipioService {
  MunicipioService(Dio service) : super(service);

  @override
  Future<MunicipioRequest> fecthData() async {
    final response = await service.get(ServicePath.MUNICIPIO.rawValue);
    if (response.statusCode == 200) {
      MunicipioRequest responseData = MunicipioRequest.fromJson(response.data);
      return responseData;
    } else {
      return MunicipioRequest();
    }
  }
}
