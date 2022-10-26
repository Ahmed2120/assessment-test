import 'package:assessment/pages/intro_page.dart';
import 'package:flutter/material.dart';

import '../widgets/language.dart';

class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dSize = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          SizedBox(width: double.infinity, child: Image.asset('assets/images/start.png', fit: BoxFit.fill,)),
          SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text('Oranos', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),),
                Text('Expert From Every Planet', style: TextStyle(fontSize: 19, color: Color(0xFF858d9f)),),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.only(bottom: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const IntroPage()));
                },
                  style: ElevatedButton.styleFrom(
                      primary: const Color(0xFF48907E),
                      textStyle: const TextStyle(fontSize: 20),
                      padding: const EdgeInsets.all(15),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      minimumSize: Size(dSize.width * 0.7, 34)), child: const Text('Get Started'),),
                const SizedBox(height: 8,),
                RichText(
                    text: const TextSpan(
                        text: 'Don\'t have an account?',
                        style:
                        TextStyle(color: Color(0xFF858d9f), fontSize: 13),
                        children: [
                          TextSpan(
                              text: '  Sign up',
                              style: TextStyle(
                                  color: Color(0xFF48907E),
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600),
                              ),
                        ])),
                const SizedBox(height: 8,),
                const LanguageWidget()
              ],
            ),
          ),
        ],
      ),
    );
  }
}