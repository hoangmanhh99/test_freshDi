import 'package:dio/dio.dart';
import 'package:flutter_application/data/dto/cul_transaction_dto.dart';
import 'package:flutter_application/data/dto/cultivation_dto.dart';
import 'package:flutter_application/domain/entity/cul_transaction_model.dart';
import 'package:flutter_application/domain/entity/cultivation_model.dart';
import 'package:get_it/get_it.dart';

class BaseApiService {
  Dio dio = GetIt.instance.get();

  Future<CultivationModel> getCul(String cultivation) async {
    var path = '/freshdi.data.test.batch.get_batch_detail';

    try {
      final response =
          await dio.get(path, queryParameters: {'cultivation': cultivation});
      CultivationModel data =
          CultivationDto.fromJson((response.data['message']));
      return data;
    } catch (e) {
      rethrow;
    }
  }

  Future<CultivationModel> addTransaction({
    required String transCultivation,
    required String transType,
    required String transDate,
    required double transQuantity,
    required String transUom,
    required String transDescription,
  }) async {
    var path = '/freshdi.data.test.batch_trans.post_batch_trans';

    var body = {
      "trans_cultivation": transCultivation,
      "trans_type": transType,
      "trans_date": transDate,
      "trans_quantity": transQuantity,
      "trans_uom": transUom,
      "trans_description": transDescription
    };

    try {
      final response = await dio.post(path, data: body);
      return CultivationDto.fromJson(response.data['message']);
    } catch (e) {
      rethrow;
    }
  }
}
