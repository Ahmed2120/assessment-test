import 'package:assessment/cubit/message_cubit/message_state.dart';
import 'package:assessment/model/expert.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/data.dart';
import '../../model/message.dart';
import 'favorite_state.dart';

class FavoriteCubit extends Cubit<FavoriteState>
{
  FavoriteCubit() : super(FavoriteState());

  void changeFavorite( int expertIndex) {

    if(experts[expertIndex].isFavorite) {
      experts[expertIndex].isFavorite = false;
    }
    else{
      experts[expertIndex].isFavorite = true;
    }
      emit(FavoriteState());
  }
}