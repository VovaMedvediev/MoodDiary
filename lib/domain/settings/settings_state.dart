import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_state.freezed.dart';
part 'settings_state.g.dart';

@freezed
class SettingsState with _$SettingsState {
  const SettingsState._();
  const factory SettingsState({
    @Default(false) bool showSettings,
    @Default(false) bool isPinCodeEnable,
   // @Default(false) bool needVerify,
    String? pinCode,
    DateTime? lastVerify,
  }) = _SettingsState;

  factory SettingsState.fromJson(Map<String, dynamic> json) =>
      _$SettingsStateFromJson(json);

  bool verifyAccess() {
    //if (needVerify) return false;
    if (pinCode != null) {
      if (lastVerify != null) {
        if (lastVerify!.difference(DateTime.now()).inMinutes <= 5) {
          return true;
        } else {
          return false;
        }
      } else {
        return false;
      }
    } else {
      return true;
    }
  }
}
