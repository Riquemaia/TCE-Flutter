import 'package:json_annotation/json_annotation.dart';

part 'despesa_model.g.dart';

@JsonSerializable()
class DespesaModel {
  int? id;
  String? orgao;
  String? mes;
  String? evento;
  @JsonKey(name: "numero_empenho")
  String? numeroEmpenho;
  @JsonKey(name: "id_fornecedor")
  String? idFornecedor;
  @JsonKey(name: "nm_fornecedor")
  String? nmFornecedor;
  @JsonKey(name: "data_emissao_despesa")
  String? dataEmissaoDespesa;
  @JsonKey(name: "valor_despesa")
  double? valorDespesa;

  DespesaModel(
      {this.id,
      this.orgao,
      this.mes,
      this.evento,
      this.numeroEmpenho,
      this.idFornecedor,
      this.nmFornecedor,
      this.dataEmissaoDespesa,
      this.valorDespesa});

  factory DespesaModel.fromJson(Map<String, dynamic> json) {
    return _$DespesaModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$DespesaModelToJson(this);
  }
}
