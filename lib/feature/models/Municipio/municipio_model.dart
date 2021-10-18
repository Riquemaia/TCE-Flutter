import 'package:json_annotation/json_annotation.dart';
part 'municipio_model.g.dart';

@JsonSerializable()
class MunicipioModel {
  int? id;
  String? municipio;
  @JsonKey(name: "municipio_extenso")
  String? municipioExtenso;
  double? porcentagem;
  @JsonKey(name: "data_de_atualizacao")
  String? dataDeAtualizacao;

  MunicipioModel(
      {this.id,
      this.municipio,
      this.municipioExtenso,
      this.porcentagem,
      this.dataDeAtualizacao});

  factory MunicipioModel.fromJson(Map<String, dynamic> json) {
    return _$MunicipioModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$MunicipioModelToJson(this);
  }
}
