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

  bool diaryEvent = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            if(diaryEvent == false)
            const DiaryEventListScreen(),
            if(diaryEvent == true)
            const DiaryEventContainer(),
            
            if(diaryEvent == false)
            
             Padding(
               padding: const EdgeInsets.only(left: 15,right: 15),
               child: InkWell(
                onTap: (){
                  setState(() {
                    diaryEvent = true;
                  });
                },
                child: NextButton(text: "Add new diary")),
             ),
             if(diaryEvent == true)
             Padding(
               padding: const EdgeInsets.only(left: 15,right: 15,top: 5),
               child: InkWell(
                onTap: (){
                  setState(() {
                    diaryEvent = false;
                  });
                },
                child: NextButton(text: "Submit")),
             ),
          ],
        ),
      ),
    );
  }
}