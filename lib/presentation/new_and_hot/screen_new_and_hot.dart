import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/new_and_hot/widgets/coming_soon.dart';
import 'package:netflix_app/presentation/new_and_hot/widgets/everyones_watching.dart';
import 'package:netflix_app/presentation/widgets/app_bar_widget.dart';

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
        child: Scaffold(
            appBar: PreferredSize(
                preferredSize: const Size.fromHeight(110),
                child: AppBar(
                  title: Text(
                    'New & Hot',
                    style: GoogleFonts.libreFranklin(
                        fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  actions: [
                    const Icon(
                      Icons.cast,
                      color: Colors.white,
                      size: 30,
                    ),
                    kWidth,
                    Container(
                      margin: const EdgeInsets.all(13),
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
                    kWidth,
                  ],
                  bottom: TabBar(
                      isScrollable: true,
                      labelColor: kBlackColor,
                      labelStyle: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      unselectedLabelColor: kWHiteColor,
                      indicator: BoxDecoration(
                          color: kWHiteColor, borderRadius: kRadius30),
                      tabs: const [
                        Tab(
                          text: '🍿 Coming Soon',
                        ),
                        Tab(
                          text: '👀 Everyone\'s Watching',
                        )
                      ]),
                )),
            body: TabBarView(children: [ComingSoon(), EveryOnesWatching()])),
      ),
    );
  }
}
