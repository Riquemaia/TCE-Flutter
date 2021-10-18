// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'despesa_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DespesaModel _$DespesaModelFromJson(Map<String, dynamic> json) => DespesaModel(
      id: json['id'] as int?,
      orgao: json['orgao'] as String?,
      mes: json['mes'] as String?,
      evento: json['evento'] as String?,
      numeroEmpenho: json['numero_empenho'] as String?,
      idFornecedor: json['id_fornecedor'] as String?,
      nmFornecedor: json['nm_fornecedor'] as String?,
      dataEmissaoDespesa: json['data_emissao_despesa'] as String?,
      valorDespesa: (json['valor_despesa'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$DespesaModelToJson(DespesaModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'orgao': instance.orgao,
      'mes': instance.mes,
      'evento': instance.evento,
      'numero_empenho': instance.numeroEmpenho,
      'id_fornecedor': instance.idFornecedor,
      'nm_fornecedor': instance.nmFornecedor,
      'data_emissao_despesa': instance.dataEmissaoDespesa,
      'valor_despesa': instance.valorDespesa,
    };
