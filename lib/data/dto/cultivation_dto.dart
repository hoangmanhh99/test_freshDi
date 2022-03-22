import 'package:flutter_application/domain/entity/cultivation_model.dart';
import 'package:json_annotation/json_annotation.dart';

import 'cul_transaction_dto.dart';
part 'cultivation_dto.g.dart';

@JsonSerializable()
class CultivationDto implements CultivationModel {

  @override
  String? cul_batch_no;

  @override
  String? cul_batch_no_code;

  @override
  String? cul_cert;

  @override
  String? cul_farm;

  @override
  String? cul_harvest_end_date;

  @override
  double? cul_harvest_size;

  @override
  String? cul_harvest_start_date;

  @override
  String? cul_harvest_uom;

  @override
  String? cul_item;

  @override
  String? cul_seed;

  @override
  String? cul_subfarm;

  @override
  List<CulTransactionDto>? cul_transaction;

  CultivationDto(
      this.cul_batch_no,
      this.cul_batch_no_code,
      this.cul_cert,
      this.cul_farm,
      this.cul_harvest_end_date,
      this.cul_harvest_size,
      this.cul_harvest_start_date,
      this.cul_harvest_uom,
      this.cul_item,
      this.cul_seed,
      this.cul_subfarm,
      this.cul_transaction);

  factory CultivationDto.fromJson(Map<String, dynamic> json) =>
      _$CultivationDtoFromJson(json);

  Map<String, dynamic> toJson() => _$CultivationDtoToJson(this);

}
