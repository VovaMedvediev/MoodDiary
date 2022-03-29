import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mooddiary/domain/app/app_bloc.dart';
import 'package:mooddiary/domain/app/app_event.dart';
import 'package:mooddiary/domain/app/diary.dart';
import 'package:mooddiary/domain/app/moods.dart';

class DayMoodDiary extends StatefulWidget {
  DayMoodDiary({Key? key, required this.diary}) : super(key: key);

  Diary diary;

  @override
  State<DayMoodDiary> createState() => _DayMoodDiaryState();
}

class _DayMoodDiaryState extends State<DayMoodDiary> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(),
        body:
            widget.diary.mood != null ? _showDiaryEditor() : _showMoodsGaley(),
      );

  Widget _showMoodsGaley() => GridView.count(
        crossAxisCount: 3,
        children: _getMoodGalery(),
      );

  List<Widget> _getMoodGalery() {
    List<Widget> ws = [];
    for (var element in Mood.values) {
      ws.add(InkWell(
          onTap: () {
            setState(() {
              widget.diary = widget.diary.copyWith(mood: element);
            });
          },
          child: Center(child: Text(element.name))));
    }
    return ws;
  }

  Widget _showDiaryEditor() => Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.check_rounded)),
            const Text("DateTime"),
            IconButton(
                onPressed: () =>
                    BlocProvider.of<AppBloc>(context).add(CloseDayEditor()),
                icon: const Icon(Icons.cancel)),
          ]),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: MediaQuery.of(context).size.height / 2,
              decoration: BoxDecoration(
                border: Border.all(width: 2),
              ),
              child: Center(
                child: Text(widget.diary.mood.toString()),
              ),
            ),
          ),
        ],
      );
}
