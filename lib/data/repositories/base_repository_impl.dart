import 'package:flutter_application/data/data.dart';
import 'package:flutter_application/domain/repository/base_repository.dart';
import '../../domain/entity/cultivation_model.dart';

class BaseRepositoryImpl implements BaseRepository {
  BaseApiService baseApiService = BaseApiService();

  @override
  Future<CultivationModel> getCul(String cultivation) async {
    return await baseApiService.getCul(cultivation);
  }
}