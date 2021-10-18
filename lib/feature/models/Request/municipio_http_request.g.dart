// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'municipio_http_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MunicipioRequest _$MunicipioRequestFromJson(Map<String, dynamic> json) =>
    MunicipioRequest(
      status: json['status'] as int?,
      emConformidade: json['Em Conformidade'] as int?,
      processosPendente: json['Processos Pendente'] as int?,
      foraDeConformidade: json['Fora de Conformidade'] as int?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => MunicipioModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MunicipioRequestToJson(MunicipioRequest instance) =>
    <String, dynamic>{
      'status': instance.status,
      'Em Conformidade': instance.emConformidade,
      'Processos Pendente': instance.processosPendente,
      'Fora de Conformidade': instance.foraDeConformidade,
      'data': instance.data,
    };
