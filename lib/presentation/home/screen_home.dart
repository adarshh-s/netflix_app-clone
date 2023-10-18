import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/home/widgets/background_custom_card.dart';
import 'package:netflix_app/presentation/home/widgets/number_title_card.dart';
import 'package:netflix_app/presentation/widgets/main_title_card.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ValueListenableBuilder(
        valueListenable: scrollNotifier,
        builder: (BuildContext context, index, _) {
          return NotificationListener<UserScrollNotification>(
            onNotification: (notification) {
              final ScrollDirection direction = notification.direction;
              if (direction == ScrollDirection.reverse) {
                scrollNotifier.value = false;
              } else if (direction == ScrollDirection.forward) {
                scrollNotifier.value = true;
              }
              return true;
            },
            child: Stack(
              children: [
                ListView(
                  children: const [
                    Column(
                      children: [
                        BackgroundCard(),
                        kHeight,
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
                  ],
                ),
                scrollNotifier.value == true
                    ? Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 1500),
                          width: double.infinity,
                          height: 150,
                          color: Colors.transparent,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/images/logo.png',
                                    width: 60,
                                    height: 60,
                                  ),
                                  const Spacer(),
                                  const Icon(
                                    Icons.cast,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                  kWidth22,
                                  Container(
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      image: const DecorationImage(
                                        fit: BoxFit.cover,
                                        image: NetworkImage(
                                            'https://upload.wikimedia.org/wikipedia/commons/0/0b/Netflix-avatar.png'),
                                      ),
                                    ),
                                  ),
                                  kWidth
                                ],
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(vertical: 25),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      'TV Shows',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text('Movies',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold)),
                                    Row(
                                      children: [
                                        Text('Categories',
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold)),
                                        Icon(
                                          Icons.arrow_drop_down,
                                          color: kWHiteColor,
                                          size: 25,
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    : kHeight
              ],
            ),
          );
        },
      )),
    );
  }
}
