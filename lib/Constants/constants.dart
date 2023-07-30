import 'package:chatgpt_app/Widgets/text_widget.dart';
import 'package:flutter/material.dart';

Color scaffoldBackgroundColor = const Color(0xFF343541);
Color cardColor = const Color(0xFF444654);

List<String> models = [
  'Model1',
  'Model2',
  'Model3',
  'Model4',
  'Model5',
  'Model6',
];

List<DropdownMenuItem<String>>? get getModelsItem {
  List<DropdownMenuItem<String>>? modelItems =
      List<DropdownMenuItem<String>>.generate(
          models.length,
          (index) => DropdownMenuItem(
              value: models[index],
              child: TextWidget(
                label: models[index],
                fontSize: 15,
              )));
  return modelItems;
}

final chatMessages = [
  {
    "msg": "Hello who are you?",
    "chatIndex": 0,
  },
  {
    "msg":
        "Hello I am chat GPT, a large model developed by openAI. I am here to assists you",
    "chatIndex": 1,
  },
  {
    "msg": "What is Flutter?",
    "chatIndex": 0,
  },
  {
    "msg":
        "Flutter is a cross platform mobile application development platform",
    "chatIndex": 1,
  },
  {
    "msg": "What is Flutter?",
    "chatIndex": 0,
  },
  {
    "msg":
        "Flutter is a cross platform mobile application development platform What is Flutter What is Flutter What is Flutter What is Flutter What is Flutter What is Flutter",
    "chatIndex": 1,
  }
];
