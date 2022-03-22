import '../entity/cultivation_model.dart';

abstract class BaseRepository {
  Future<CultivationModel> getCul(String cultivation);
  Future<CultivationModel> addTransaction({
    required String transCultivation,
    required String transType,
    required String transDate,
    required double transQuantity,
    required String transUom,
    required String transDescription,
  });
}