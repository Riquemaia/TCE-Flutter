import 'package:dio/dio.dart';

import '../../models/Request/despesa_request.dart';

abstract class IDespesasService {
  IDespesasService(this.service);
  Future<DespesaRequest> fecthData();

  final Dio service;
}
