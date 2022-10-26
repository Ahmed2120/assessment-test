import 'package:assessment/cubit/favorite_cubit/favorite_cubit.dart';
import 'package:assessment/cubit/favorite_cubit/favorite_state.dart';
import 'package:assessment/data/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

import '../widgets/card_widget.dart';
import '../widgets/circle_widget.dart';
import '../widgets/drag_bottom_sheet.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dSize = MediaQuery.of(context).size;

    return Stack(fit: StackFit.expand, children: [
      SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                height: 235,
                child: Column(
                  children: [
                    partTitle('Recommended Experts'),
                    Expanded(
                      child: ListView.builder(
                        itemBuilder: (context, index) => BlocConsumer<FavoriteCubit, FavoriteState>(
                            builder: (context, state) => CardWidget(
                                  name: experts[index].name,
                                  job: experts[index].job,
                                  rate: experts[index].rate,
                                  image: experts[index].image,
                                  isFavorite: experts[index].isFavorite,
                                  function: () => changeFavorite(index, context),
                                ),
                            listener: (context, state) {}),
                        itemCount: experts.length,
                        scrollDirection: Axis.horizontal,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                height: dSize.height * 0.2,
                child: Column(
                  children: [
                    partTitle('Online Experts'),
                    Expanded(
                      child: ListView.builder(
                        itemBuilder: (context, index) => const CircleWidget(),
                        itemCount: 7,
                        scrollDirection: Axis.horizontal,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      const DragBottomSheet(),
    ]);
  }

  Row partTitle(String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title),
        const Icon(Icons.more_horiz),
      ],
    );
  }

  changeFavorite(expertIndex, context) {
    BlocProvider.of<FavoriteCubit>(context).changeFavorite(expertIndex);
  }
}
