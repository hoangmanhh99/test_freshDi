import 'package:flutter_application/domain/entity/cultivation_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'cultivation_state.freezed.dart';
@freezed
abstract class CultivationState with _$CultivationState {
    const factory CultivationState(CultivationModel data) = CultivationStateData;
    const factory CultivationState.loading() = CultivationStateLoading;
    const factory CultivationState.error(dynamic error) = CultivationStateError;
}
