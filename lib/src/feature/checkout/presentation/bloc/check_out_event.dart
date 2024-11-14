part of 'check_out_bloc.dart';

@freezed
class CheckOutEvent with _$CheckOutEvent {
  const factory CheckOutEvent.checkedOut(List<Map<String, dynamic>> items) = _CheckedOut;
}