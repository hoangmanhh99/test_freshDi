// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cultivation_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CultivationDto _$CultivationDtoFromJson(Map<String, dynamic> json) =>
    CultivationDto(
      json['cul_batch_no'] as String?,
      json['cul_batch_no_code'] as String?,
      json['cul_cert'] as String?,
      json['cul_farm'] as String?,
      json['cul_harvest_end_date'] as String?,
      (json['cul_harvest_size'] as num?)?.toDouble(),
      json['cul_harvest_start_date'] as String?,
      json['cul_harvest_uom'] as String?,
      json['cul_item'] as String?,
      json['cul_seed'] as String?,
      json['cul_subfarm'] as String?,
      (json['cul_transaction'] as List<dynamic>?)
          ?.map((e) => CulTransactionDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CultivationDtoToJson(CultivationDto instance) =>
    <String, dynamic>{
      'cul_batch_no': instance.cul_batch_no,
      'cul_batch_no_code': instance.cul_batch_no_code,
      'cul_cert': instance.cul_cert,
      'cul_farm': instance.cul_farm,
      'cul_harvest_end_date': instance.cul_harvest_end_date,
      'cul_harvest_size': instance.cul_harvest_size,
      'cul_harvest_start_date': instance.cul_harvest_start_date,
      'cul_harvest_uom': instance.cul_harvest_uom,
      'cul_item': instance.cul_item,
      'cul_seed': instance.cul_seed,
      'cul_subfarm': instance.cul_subfarm,
      'cul_transaction': instance.cul_transaction,
    };
