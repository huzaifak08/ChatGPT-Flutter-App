import 'package:chatgpt_app/Constants/constants.dart';
import 'package:chatgpt_app/Widgets/text_widget.dart';
import 'package:flutter/material.dart';

class ChatWidget extends StatelessWidget {
  final String msg;
  final int chatIndex;
  const ChatWidget({super.key, required this.msg, required this.chatIndex});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: chatIndex == 0 ? scaffoldBackgroundColor : cardColor,
      child: Padding(
        padding: EdgeInsets.all(9.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              chatIndex == 0 ? 'assets/person.png' : 'assets/chat_logo.png',
              height: 30,
              width: 30,
            ),
            SizedBox(width: 8),
            Expanded(child: TextWidget(label: msg)),
            chatIndex == 0
                ? const SizedBox.shrink()
                : Row(
                    children: [
                      Icon(
                        Icons.thumb_up_alt_outlined,
                        color: Colors.white,
                      ),
                      SizedBox(width: 5),
                      Icon(
                        Icons.thumb_down_alt_outlined,
                        color: Colors.white,
                      ),
                    ],
                  ),
          ],
        ),
      ),
    );
  }
}
