import 'package:feneco_fiap_tce_app/feature/models/DespesaAnual/despesa_anual_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'despesa_anual_request.g.dart';

@JsonSerializable()
class DespesaAnualRequest {
  int? status;
  List<DespesaAnualModel>? data;

  DespesaAnualRequest({this.status, this.data});

  factory DespesaAnualRequest.fromJson(Map<String, dynamic> json) {
    return _$DespesaAnualRequestFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$DespesaAnualRequestToJson(this);
  }
}

// url despesa anual = https://run.mocky.io/v3/54c6d476-e869-4443-b203-94747ab83560 
// url despesa anual = https://run.mocky.io/v3/ac70e9f6-e4c7-41b4-83d3-26bbbb40edf4 
