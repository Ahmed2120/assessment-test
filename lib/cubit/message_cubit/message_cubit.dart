import 'package:assessment/cubit/message_cubit/message_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../model/message.dart';

class SendMessageCubit extends Cubit<SendMessageState>
{
  SendMessageCubit() : super(SendMessageState());

  List<Message> messages = [];

  void sendMessage( Message message) {

      messages.add(message);
      emit(SendMessageState());
  }
}