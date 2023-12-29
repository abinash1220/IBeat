import 'package:flutter/material.dart';
import 'package:i_beat/hooks/next_button.dart';
import 'package:i_beat/screens/home_screen/widget/diary_event_container.dart';
import 'package:i_beat/screens/home_screen/widget/diary_event_list_screen.dart';

class DiaryEventScreen extends StatefulWidget {
  const DiaryEventScreen({super.key});

  @override
  State<DiaryEventScreen> createState() => _DiaryEventScreenState();
}

class _DiaryEventScreenState extends State<DiaryEventScreen> {

  bool diaryEvent = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          if(diaryEvent == false)
          const DiaryEventListScreen(),
          if(diaryEvent == true)
          const DiaryEventContainer(),
           NextButton(text: "Add new diary"),
        ],
      ),
    );
  }
}