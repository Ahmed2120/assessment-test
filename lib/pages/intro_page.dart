import 'package:assessment/pages/chat_page.dart';
import 'package:flutter/material.dart';

import '../widgets/language.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dSize = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(width: 250,height: 200, child: Image.asset('assets/images/text.png', fit: BoxFit.fill,)),
                SizedBox(width: 180,height: 200, child: Image.asset('assets/images/robot.png', fit: BoxFit.fill,)),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.only(bottom: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ElevatedButton(onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=> ChatPage()));
                      },
                        style: ElevatedButton.styleFrom(
                            primary: const Color(0xFF48907E),
                            textStyle: const TextStyle(fontSize: 20),
                            padding: const EdgeInsets.all(15),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                            minimumSize: Size(dSize.width * 0.3, 34)), child: const Text('Next'),),
                      const SizedBox(height: 16,),
                      const LanguageWidget()
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}