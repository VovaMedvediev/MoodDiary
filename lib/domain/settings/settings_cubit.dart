import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:mooddiary/domain/settings/settings_state.dart';

class SettingsCubit extends HydratedCubit<SettingsState> {
  SettingsCubit() : super(const SettingsState());

  void showSettingsTorggle() =>
      emit(state.copyWith(showSettings: !state.showSettings));

  void torgglePinCode() {
    emit(state.copyWith(
        isPinCodeEnable: !state.isPinCodeEnable,
        pinCode: state.isPinCodeEnable ? null : state.pinCode,
        lastVerify: state.isPinCodeEnable ? null : state.lastVerify,));
  }

  void setPinCode(String pin) => emit(state.copyWith(pinCode: pin));

  String? checkVerify(String pin) {
    if (state.pinCode == pin) {
      emit(state.copyWith(lastVerify: DateTime.now()));
    } else {
      return "Pin code is not correct";
    }
    return null;
  }

  @override
  SettingsState? fromJson(Map<String, dynamic> json) =>
      SettingsState.fromJson(json);

  @override
  Map<String, dynamic>? toJson(SettingsState state) => state.toJson();
}
