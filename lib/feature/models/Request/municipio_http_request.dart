import 'package:feneco_fiap_tce_app/feature/models/Municipio/municipio_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'municipio_http_request.g.dart';

@JsonSerializable()
class MunicipioRequest {
  int? status;
  @JsonKey(name: 'Em Conformidade')
  int? emConformidade;
  @JsonKey(name: 'Processos Pendente')
  int? processosPendente;
  @JsonKey(name: 'Fora de Conformidade')
  int? foraDeConformidade;
  List<MunicipioModel>? data;

  MunicipioRequest(
      {this.status,
      this.emConformidade,
      this.processosPendente,
      this.foraDeConformidade,
      this.data});

  factory MunicipioRequest.fromJson(Map<String, dynamic> json) {
    return _$MunicipioRequestFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$MunicipioRequestToJson(this);
  }
}

// url municipio = https://run.mocky.io/v3/f2078eda-eb08-4cae-9873-06856dea415a
