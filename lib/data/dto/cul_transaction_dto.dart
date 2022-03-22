import 'package:flutter_application/domain/entity/cul_transaction_model.dart';
import 'package:json_annotation/json_annotation.dart';
part 'cul_transaction_dto.g.dart';

@JsonSerializable()
class CulTransactionDto implements CulTransactionModel {

  @override
  String trans_date;

  @override
  String trans_description;

  @override
  double trans_quantity;

  @override
  String trans_type;

  @override
  String trans_uom;

  CulTransactionDto(this.trans_date, this.trans_description,
      this.trans_quantity, this.trans_type, this.trans_uom);

  factory CulTransactionDto.fromJson(Map<String, dynamic> json) =>
      _$CulTransactionDtoFromJson(json);

  Map<String, dynamic> toJson() => _$CulTransactionDtoToJson(this);

}
