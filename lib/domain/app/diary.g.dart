// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'diary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Diary _$$_DiaryFromJson(Map<String, dynamic> json) => _$_Diary(
      mood: $enumDecodeNullable(_$MoodEnumMap, json['mood']),
      data: json['data'] as String?,
      dateTime: DateTime.parse(json['dateTime'] as String),
    );

Map<String, dynamic> _$$_DiaryToJson(_$_Diary instance) => <String, dynamic>{
      'mood': _$MoodEnumMap[instance.mood],
      'data': instance.data,
      'dateTime': instance.dateTime.toIso8601String(),
    };

const _$MoodEnumMap = {
  Mood.angry: 'angry',
  Mood.happy: 'happy',
  Mood.moved: 'moved',
  Mood.sad: 'sad',
  Mood.exhausted: 'exhausted',
  Mood.speechless: 'speechless',
  Mood.depressed: 'depressed',
  Mood.bland: 'bland',
};
