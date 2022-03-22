import 'package:dio/dio.dart';
import 'package:flutter_application/data/dto/cultivation_dto.dart';
import 'package:flutter_application/domain/entity/cultivation_model.dart';
import 'package:get_it/get_it.dart';

class BaseApiService {
  Dio dio = GetIt.instance.get();

  Future<CultivationModel> getCul(String cultivation) async {
    var path = '/freshdi.data.test.batch.get_batch_detail';

    try {
      final response = await dio.get(path, queryParameters: {
        'cultivation': cultivation
      });
      CultivationModel data = CultivationDto.fromJson((response.data['message']));
      return data;
    } catch (e) {
      rethrow;
    }
  }
}
