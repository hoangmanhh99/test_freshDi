import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import '../../../domain/repository/base_repository.dart';
import 'cultivation_state.dart';

class CultivationBloc extends Cubit<CultivationState> {
  final BaseRepository _baseRepositoryImpl = GetIt.instance.get<BaseRepository>();

  CultivationBloc() : super(const CultivationState.loading());


  Future getProductOfCollection(String cultivation) async {
    final data =
    await _baseRepositoryImpl.getCul(cultivation);
    emit(CultivationState(data));
  }
}