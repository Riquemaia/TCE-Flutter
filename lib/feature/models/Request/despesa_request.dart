import 'package:feneco_fiap_tce_app/feature/models/Despesa/despesa_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'despesa_request.g.dart';

@JsonSerializable()
class DespesaRequest {
  int? status;
  int? qtde;
  int? page;
  List<DespesaModel>? data;

  DespesaRequest({this.status, this.qtde, this.page, this.data});

  factory DespesaRequest.fromJson(Map<String, dynamic> json) {
    return _$DespesaRequestFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$DespesaRequestToJson(this);
  }
}
// url despesas por anos = https://run.mocky.io/v3/4f093d6b-e097-4ba2-89dd-4de02865d1cc 
