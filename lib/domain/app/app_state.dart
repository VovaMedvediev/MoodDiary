import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mooddiary/domain/app/diary.dart';
part 'app_state.freezed.dart';
part 'app_state.g.dart';

@freezed
class AppState with _$AppState {
  const factory AppState(
    {Diary? selectedDiary,}
  ) = _AppState;

  factory AppState.fromJson(Map<String, dynamic> json) =>
      _$AppStateFromJson(json);
}
