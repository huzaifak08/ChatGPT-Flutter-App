import 'package:chatgpt_app/Constants/constants.dart';
import 'package:chatgpt_app/Widgets/chat_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../Services/services.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final bool _isTyping = true;
  late TextEditingController textEditingController;

  @override
  void initState() {
    textEditingController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;

    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: width * 0.01, vertical: height * 0.01),
          child: Image.asset('assets/openai_logo.jpg'),
        ),
        title: const Text('ChatGPT'),
        actions: [
          IconButton(
            onPressed: () async {
              await Services.showModelSheet(context: context);
            },
            icon: const Icon(
              Icons.more_vert_rounded,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Flexible(
            child: ListView.builder(
              itemCount: chatMessages.length,
              itemBuilder: (context, index) {
                return ChatWidget(
                  msg: chatMessages[index]["msg"].toString(),
                  chatIndex:
                      int.parse(chatMessages[index]["chatIndex"].toString()),
                );
              },
            ),
          ),
          if (_isTyping) ...[
            const SpinKitThreeBounce(
              color: Colors.white,
              size: 16,
            ),
            Material(
              color: cardColor,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.02),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: textEditingController,
                        style: const TextStyle(color: Colors.white),
                        decoration: const InputDecoration(
                          hintText: 'How can i help you..',
                          hintStyle: TextStyle(color: Colors.white),
                        ),
                        onSubmitted: (value) {},
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.send,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ],
      ),
    );
  }
}
