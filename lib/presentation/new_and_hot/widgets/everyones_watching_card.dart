import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/home/widgets/custom_icon_button_widget.dart';
import 'package:netflix_app/presentation/widgets/video_widget.dart';

class EveryonesWatchingCard extends StatelessWidget {
  const EveryonesWatchingCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kHeight,
        const VideoWidget(image: vImage2),
        kHeight,
        Padding(
          padding: const EdgeInsets.fromLTRB(15, 8, 15, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 50,
                width: 180,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://occ-0-4994-2186.1.nflxso.net/dnm/api/v6/tx1O544a9T7n8Z_G12qaboulQQE/AAAABSBN-xQnRGK7_jc1e-9JBQsVIlfoQ9ZyO84nfERacEDw2actD4EMiyo46OsWNDU2Rt06sbTZsKqYd7E024456eExggvM7XnyWw7Vimm4vb4r401ZVixiWiA9i-G6XhNf2PwmmQP5vsULDDLkxyDWycNB9vJpWTjvpd0M5vOq39CU09Q9UgpoZA.png?r=baf'),
                  ),
                ),
              )
              /* Text(
                        'Elite  ',
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                      ),*/
              ,
              const Spacer(),
              const Row(
                children: [
                  MainIconButtonWidget(
                    icon: CupertinoIcons.paperplane,
                    text: 'Share',
                    textSize: 14,
                    iconSize: 30,
                    color: Colors.grey,
                  ),
                  kWidth,
                  MainIconButtonWidget(
                    icon: CupertinoIcons.add,
                    text: 'My List',
                    textSize: 14,
                    iconSize: 30,
                    color: Colors.grey,
                  ),
                  kWidth,
                  MainIconButtonWidget(
                    icon: CupertinoIcons.play_fill,
                    text: 'play',
                    textSize: 14,
                    iconSize: 30,
                    color: Colors.grey,
                  ),
                ],
              )
            ],
          ),
        ),
        kHeight,
        const Text(
          'Formula 1',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        kHeight10,
        const Text(
          'Drivers, managers and team owners live life in the fast lane — both on and off the track — during each cutthroat season of Formula 1 racing.',
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
