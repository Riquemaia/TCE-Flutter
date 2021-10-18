import 'package:json_annotation/json_annotation.dart';

part 'despesa_anual_model.g.dart';

@JsonSerializable()
class DespesaAnualModel {
  int? id;
  double? porcentagem;
  String? ano;

  DespesaAnualModel({this.id, this.porcentagem, this.ano});

  factory DespesaAnualModel.fromJson(Map<String, dynamic> json) {
    return _$DespesaAnualModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$DespesaAnualModelToJson(this);
  }
}
