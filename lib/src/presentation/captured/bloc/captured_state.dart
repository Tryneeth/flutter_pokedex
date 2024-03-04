part of 'captured_bloc.dart';

@freezed
class CapturedState with _$CapturedState {
  const factory CapturedState.initial() = _InitialCapturedState;
  const factory CapturedState.loading() = _LoadingCapturedState;
  const factory CapturedState.content({
    required List<HivePokemon> capturedList,
  }) = _ContentCapturedState;
  const factory CapturedState.error(Exception error) = _ErrorCapturedState;
}
