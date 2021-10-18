import 'package:dio/dio.dart';

import '../../models/Request/despesa_anual_request.dart';

abstract class IDespesasAnualService {
  IDespesasAnualService(this.service);
  Future<DespesaAnualRequest> fecthData();

  final Dio service;
}
