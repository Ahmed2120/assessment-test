import 'package:flutter/material.dart';

class OranosWidget extends StatelessWidget {
  const OranosWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: const TextSpan(
            text: 'Oranos',
            style:
            TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600),
            children: [
              TextSpan(
                text: '.',
                style: TextStyle(
                    color: Color(0xFF48907E),
                    fontSize: 30,
                    fontWeight: FontWeight.w600),
              ),
            ]));
  }
}
