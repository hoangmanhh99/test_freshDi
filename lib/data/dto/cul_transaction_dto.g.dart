// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cul_transaction_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CulTransactionDto _$CulTransactionDtoFromJson(Map<String, dynamic> json) =>
    CulTransactionDto(
      json['trans_date'] as String,
      json['trans_description'] as String,
      (json['trans_quantity'] as num).toDouble(),
      json['trans_type'] as String,
      json['trans_uom'] as String,
    );

Map<String, dynamic> _$CulTransactionDtoToJson(CulTransactionDto instance) =>
    <String, dynamic>{
      'trans_date': instance.trans_date,
      'trans_description': instance.trans_description,
      'trans_quantity': instance.trans_quantity,
      'trans_type': instance.trans_type,
      'trans_uom': instance.trans_uom,
    };
