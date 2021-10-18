// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'despesa_anual_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DespesaAnualModel _$DespesaAnualModelFromJson(Map<String, dynamic> json) =>
    DespesaAnualModel(
      id: json['id'] as int?,
      porcentagem: (json['porcentagem'] as num?)?.toDouble(),
      ano: json['ano'] as String?,
    );

Map<String, dynamic> _$DespesaAnualModelToJson(DespesaAnualModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'porcentagem': instance.porcentagem,
      'ano': instance.ano,
    };
