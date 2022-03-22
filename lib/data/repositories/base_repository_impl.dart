import 'package:flutter_application/data/data.dart';
import 'package:flutter_application/domain/repository/base_repository.dart';
import '../../domain/entity/cultivation_model.dart';

class BaseRepositoryImpl implements BaseRepository {
  BaseApiService baseApiService = BaseApiService();

  @override
  Future<CultivationModel> getCul(String cultivation) async {
    return await baseApiService.getCul(cultivation);
  }

  @override
  Future<CultivationModel> addTransaction({
    required String transCultivation,
    required String transType,
    required String transDate,
    required double transQuantity,
    required String transUom,
    required String transDescription,
  }) async {
    return await baseApiService.addTransaction(
        transCultivation: transCultivation,
        transType: transType,
        transDate: transDate,
        transQuantity: transQuantity,
        transUom: transUom,
        transDescription: transDescription);
  }
}
