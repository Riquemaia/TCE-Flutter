// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'despesa_anual_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DespesaAnualRequest _$DespesaAnualRequestFromJson(Map<String, dynamic> json) =>
    DespesaAnualRequest(
      status: json['status'] as int?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => DespesaAnualModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DespesaAnualRequestToJson(
        DespesaAnualRequest instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };
