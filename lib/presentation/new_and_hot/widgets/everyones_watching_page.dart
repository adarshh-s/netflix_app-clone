import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/new_and_hot/widgets/everyones_watching_card.dart';

class EveryOnesWatching extends StatelessWidget {
  const EveryOnesWatching({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) => const EveryonesWatchingCard(),
      separatorBuilder: (context, index) => kHeight60,
      itemCount: 10,
    );
  }
}
