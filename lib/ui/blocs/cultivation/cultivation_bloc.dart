import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import '../../../domain/repository/base_repository.dart';
import 'cultivation_state.dart';

class CultivationBloc extends Cubit<CultivationState> {
  final BaseRepository _baseRepositoryImpl =
      GetIt.instance.get<BaseRepository>();

  CultivationBloc() : super(const CultivationState.loading());

  Future getProductOfCollection(String cultivation) async {
    final data = await _baseRepositoryImpl.getCul(cultivation);
    emit(CultivationState(data));
  }

  Future updateCultivation({
    required String transCultivation,
    required String transType,
    required String transDate,
    required double transQuantity,
    required String transUom,
    required String transDescription,
  }) async {
    final data = await _baseRepositoryImpl.addTransaction(
        transCultivation: transCultivation,
        transType: transType,
        transDate: transDate,
        transQuantity: transQuantity,
        transUom: transUom,
        transDescription: transDescription);
    emit(CultivationState(data));
  }
}
