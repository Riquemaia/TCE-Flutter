// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'despesa_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DespesaRequest _$DespesaRequestFromJson(Map<String, dynamic> json) =>
    DespesaRequest(
      status: json['status'] as int?,
      qtde: json['qtde'] as int?,
      page: json['page'] as int?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => DespesaModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DespesaRequestToJson(DespesaRequest instance) =>
    <String, dynamic>{
      'status': instance.status,
      'qtde': instance.qtde,
      'page': instance.page,
      'data': instance.data,
    };
