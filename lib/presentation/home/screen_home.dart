import 'package:flutter/material.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/home/widgets/number_title_card.dart';
import 'package:netflix_app/presentation/widgets/main_title_card.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                MainTitleCard(
                  title: 'Released in Past Year',
                ),
                kHeight,
                MainTitleCard(
                  title: 'Trending Now',
                ),
                kHeight,
                NumberTitleCard(),
                kHeight10,
                MainTitleCard(
                  title: 'Tense Dramas',
                ),
                kHeight,
                MainTitleCard(
                  title: 'South Indian Cinema',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
