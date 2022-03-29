
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mooddiary/domain/app/moods.dart';

part 'diary.freezed.dart';
part 'diary.g.dart';

@freezed
class Diary with _$Diary{
  const factory  Diary({
    Mood? mood,
    String? data,
    required DateTime dateTime,
  })=_Diary;

  factory Diary.fromJson(Map<String, dynamic> json) => _$DiaryFromJson(json);
}