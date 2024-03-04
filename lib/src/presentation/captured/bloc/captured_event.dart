part of 'captured_bloc.dart';

@freezed
class CapturedEvent with _$CapturedEvent {
  const factory CapturedEvent.load() = _LoadCapturedEvent;
}
