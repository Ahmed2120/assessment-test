import 'package:flutter/material.dart';

import '../model/message.dart';

class MessageWidget extends StatelessWidget {
  MessageWidget({Key? key, required this.message, this.isRobot = false}) : super(key: key);

  final Message message;
  bool isRobot;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isRobot ? Alignment.centerLeft : Alignment.centerRight,
      child: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: isRobot ? Color(0xFFD6DEDD) : Color(0xFF48907E),
          borderRadius: BorderRadius.circular(12)
        ),
        child: Text(message.message, style: TextStyle(color: isRobot ? Colors.black : Colors.white),),
      ),
    );
  }
}
