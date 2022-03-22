import '../entity/cultivation_model.dart';

abstract class BaseRepository {
  Future<CultivationModel> getCul(String cultivation);
}