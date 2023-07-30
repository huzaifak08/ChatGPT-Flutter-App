import 'package:chatgpt_app/Widgets/drop_down_widget.dart';
import 'package:flutter/material.dart';

import '../Constants/constants.dart';
import '../Widgets/text_widget.dart';

class Services {
  static Future<void> showModelSheet({required BuildContext context}) async {
    await showModalBottomSheet(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
      backgroundColor: scaffoldBackgroundColor,
      context: context,
      builder: (context) {
        return const Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                  child: TextWidget(
                label: 'Choosen Model:',
                fontSize: 16,
              )),
              Flexible(flex: 2, child: ModelDropDownWidget()),
            ],
          ),
        );
      },
    );
  }
}
