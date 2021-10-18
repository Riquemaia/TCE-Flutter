// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'municipio_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MunicipioModel _$MunicipioModelFromJson(Map<String, dynamic> json) =>
    MunicipioModel(
      id: json['id'] as int?,
      municipio: json['municipio'] as String?,
      municipioExtenso: json['municipio_extenso'] as String?,
      porcentagem: (json['porcentagem'] as num?)?.toDouble(),
      dataDeAtualizacao: json['data_de_atualizacao'] as String?,
    );

Map<String, dynamic> _$MunicipioModelToJson(MunicipioModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'municipio': instance.municipio,
      'municipio_extenso': instance.municipioExtenso,
      'porcentagem': instance.porcentagem,
      'data_de_atualizacao': instance.dataDeAtualizacao,
    };
