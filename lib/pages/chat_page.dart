import 'package:assessment/cubit/message_cubit/message_cubit.dart';
import 'package:assessment/cubit/message_cubit/message_state.dart';
import 'package:assessment/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

import '../model/message.dart';
import '../widgets/message_widget.dart';
import '../widgets/send_message_widget.dart';
import 'btm_bar_page.dart';

class ChatPage extends StatelessWidget {
  ChatPage({Key? key}) : super(key: key);


  List<Message> messages = [];

  final messageController = TextEditingController();
  final scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SafeArea(
            child: MessageWidget(
              message: Message('Hi, Say Done To Go To Home Page'),
              isRobot: true,
            ),
          ),
          BlocConsumer<SendMessageCubit, SendMessageState>(
            builder: (context, state)=> Expanded(
                child: ListView.builder(
                  controller: scrollController,
                  itemBuilder: (context, index) => MessageWidget(
                    message: BlocProvider.of<SendMessageCubit>(context).messages[index],
                  ),
                  itemCount: BlocProvider.of<SendMessageCubit>(context).messages.length,
                )),
            listener: (context, state){},
          ),
          SendMessageWidget(messageController: messageController, function: ()=>sendMessage(context),),
        ],
      ),
    );
  }

  sendMessage(context) {
    if(messageController.text.isEmpty) return;
    BlocProvider.of<SendMessageCubit>(context).sendMessage(Message(messageController.text));

    scrollController.animateTo(scrollController.position.maxScrollExtent + 100,
        duration: Duration(milliseconds: 500), curve: Curves.fastOutSlowIn);
    if(messageController.text.toLowerCase() == 'done'){
      Navigator.of(context).push(MaterialPageRoute(builder: (context)=> BottomBarScreen()));
    }
    messageController.clear();
  }
}
