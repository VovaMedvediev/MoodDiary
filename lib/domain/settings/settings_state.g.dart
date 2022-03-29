// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SettingsState _$$_SettingsStateFromJson(Map<String, dynamic> json) =>
    _$_SettingsState(
      showSettings: json['showSettings'] as bool? ?? false,
      isPinCodeEnable: json['isPinCodeEnable'] as bool? ?? false,
      pinCode: json['pinCode'] as String?,
      lastVerify: json['lastVerify'] == null
          ? null
          : DateTime.parse(json['lastVerify'] as String),
    );

Map<String, dynamic> _$$_SettingsStateToJson(_$_SettingsState instance) =>
    <String, dynamic>{
      'showSettings': instance.showSettings,
      'isPinCodeEnable': instance.isPinCodeEnable,
      'pinCode': instance.pinCode,
      'lastVerify': instance.lastVerify?.toIso8601String(),
    };
