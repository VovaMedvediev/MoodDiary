// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'settings_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SettingsState _$SettingsStateFromJson(Map<String, dynamic> json) {
  return _SettingsState.fromJson(json);
}

/// @nodoc
class _$SettingsStateTearOff {
  const _$SettingsStateTearOff();

  _SettingsState call(
      {bool showSettings = false,
      bool isPinCodeEnable = false,
      String? pinCode,
      DateTime? lastVerify}) {
    return _SettingsState(
      showSettings: showSettings,
      isPinCodeEnable: isPinCodeEnable,
      pinCode: pinCode,
      lastVerify: lastVerify,
    );
  }

  SettingsState fromJson(Map<String, Object?> json) {
    return SettingsState.fromJson(json);
  }
}

/// @nodoc
const $SettingsState = _$SettingsStateTearOff();

/// @nodoc
mixin _$SettingsState {
  bool get showSettings => throw _privateConstructorUsedError;
  bool get isPinCodeEnable =>
      throw _privateConstructorUsedError; // @Default(false) bool needVerify,
  String? get pinCode => throw _privateConstructorUsedError;
  DateTime? get lastVerify => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SettingsStateCopyWith<SettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsStateCopyWith<$Res> {
  factory $SettingsStateCopyWith(
          SettingsState value, $Res Function(SettingsState) then) =
      _$SettingsStateCopyWithImpl<$Res>;
  $Res call(
      {bool showSettings,
      bool isPinCodeEnable,
      String? pinCode,
      DateTime? lastVerify});
}

/// @nodoc
class _$SettingsStateCopyWithImpl<$Res>
    implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._value, this._then);

  final SettingsState _value;
  // ignore: unused_field
  final $Res Function(SettingsState) _then;

  @override
  $Res call({
    Object? showSettings = freezed,
    Object? isPinCodeEnable = freezed,
    Object? pinCode = freezed,
    Object? lastVerify = freezed,
  }) {
    return _then(_value.copyWith(
      showSettings: showSettings == freezed
          ? _value.showSettings
          : showSettings // ignore: cast_nullable_to_non_nullable
              as bool,
      isPinCodeEnable: isPinCodeEnable == freezed
          ? _value.isPinCodeEnable
          : isPinCodeEnable // ignore: cast_nullable_to_non_nullable
              as bool,
      pinCode: pinCode == freezed
          ? _value.pinCode
          : pinCode // ignore: cast_nullable_to_non_nullable
              as String?,
      lastVerify: lastVerify == freezed
          ? _value.lastVerify
          : lastVerify // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$SettingsStateCopyWith<$Res>
    implements $SettingsStateCopyWith<$Res> {
  factory _$SettingsStateCopyWith(
          _SettingsState value, $Res Function(_SettingsState) then) =
      __$SettingsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool showSettings,
      bool isPinCodeEnable,
      String? pinCode,
      DateTime? lastVerify});
}

/// @nodoc
class __$SettingsStateCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res>
    implements _$SettingsStateCopyWith<$Res> {
  __$SettingsStateCopyWithImpl(
      _SettingsState _value, $Res Function(_SettingsState) _then)
      : super(_value, (v) => _then(v as _SettingsState));

  @override
  _SettingsState get _value => super._value as _SettingsState;

  @override
  $Res call({
    Object? showSettings = freezed,
    Object? isPinCodeEnable = freezed,
    Object? pinCode = freezed,
    Object? lastVerify = freezed,
  }) {
    return _then(_SettingsState(
      showSettings: showSettings == freezed
          ? _value.showSettings
          : showSettings // ignore: cast_nullable_to_non_nullable
              as bool,
      isPinCodeEnable: isPinCodeEnable == freezed
          ? _value.isPinCodeEnable
          : isPinCodeEnable // ignore: cast_nullable_to_non_nullable
              as bool,
      pinCode: pinCode == freezed
          ? _value.pinCode
          : pinCode // ignore: cast_nullable_to_non_nullable
              as String?,
      lastVerify: lastVerify == freezed
          ? _value.lastVerify
          : lastVerify // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SettingsState extends _SettingsState {
  const _$_SettingsState(
      {this.showSettings = false,
      this.isPinCodeEnable = false,
      this.pinCode,
      this.lastVerify})
      : super._();

  factory _$_SettingsState.fromJson(Map<String, dynamic> json) =>
      _$$_SettingsStateFromJson(json);

  @JsonKey()
  @override
  final bool showSettings;
  @JsonKey()
  @override
  final bool isPinCodeEnable;
  @override // @Default(false) bool needVerify,
  final String? pinCode;
  @override
  final DateTime? lastVerify;

  @override
  String toString() {
    return 'SettingsState(showSettings: $showSettings, isPinCodeEnable: $isPinCodeEnable, pinCode: $pinCode, lastVerify: $lastVerify)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SettingsState &&
            const DeepCollectionEquality()
                .equals(other.showSettings, showSettings) &&
            const DeepCollectionEquality()
                .equals(other.isPinCodeEnable, isPinCodeEnable) &&
            const DeepCollectionEquality().equals(other.pinCode, pinCode) &&
            const DeepCollectionEquality()
                .equals(other.lastVerify, lastVerify));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(showSettings),
      const DeepCollectionEquality().hash(isPinCodeEnable),
      const DeepCollectionEquality().hash(pinCode),
      const DeepCollectionEquality().hash(lastVerify));

  @JsonKey(ignore: true)
  @override
  _$SettingsStateCopyWith<_SettingsState> get copyWith =>
      __$SettingsStateCopyWithImpl<_SettingsState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SettingsStateToJson(this);
  }
}

abstract class _SettingsState extends SettingsState {
  const factory _SettingsState(
      {bool showSettings,
      bool isPinCodeEnable,
      String? pinCode,
      DateTime? lastVerify}) = _$_SettingsState;
  const _SettingsState._() : super._();

  factory _SettingsState.fromJson(Map<String, dynamic> json) =
      _$_SettingsState.fromJson;

  @override
  bool get showSettings;
  @override
  bool get isPinCodeEnable;
  @override // @Default(false) bool needVerify,
  String? get pinCode;
  @override
  DateTime? get lastVerify;
  @override
  @JsonKey(ignore: true)
  _$SettingsStateCopyWith<_SettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}
