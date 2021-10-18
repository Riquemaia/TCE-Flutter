import 'package:dio/dio.dart';

import '../../models/Request/municipio_http_request.dart';

abstract class IMunicipioService {
  IMunicipioService(this.service);

  Future<MunicipioRequest> fecthData();

  final Dio service;
}
