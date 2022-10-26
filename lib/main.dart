import 'package:assessment/cubit/favorite_cubit/favorite_cubit.dart';
import 'package:assessment/cubit/message_cubit/message_cubit.dart';
import 'package:assessment/pages/chat_page.dart';
import 'package:assessment/pages/start_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'pages/btm_bar_page.dart';

import 'pages/intro_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=> SendMessageCubit(),),
        BlocProvider(create: (context)=> FavoriteCubit(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Assessment',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: BottomBarScreen(),
      ),
    );
  }
}