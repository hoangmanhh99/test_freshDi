import 'package:flutter_application/domain/entity/cul_transaction_model.dart';

abstract class CultivationModel {
  String? cul_item;
  String? cul_farm;
  String? cul_batch_no;
  String? cul_batch_no_code;
  String? cul_subfarm;
  String? cul_cert;
  String? cul_seed;
  double? cul_harvest_size;
  String? cul_harvest_uom;
  String? cul_harvest_start_date;
  String? cul_harvest_end_date;
  List<CulTransactionModel>? get cul_transaction;
}