import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';

class VideoListItem extends StatelessWidget {
  final int index;
  const VideoListItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.accents[index % Colors.accents.length],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //left side
                CircleAvatar(
                  backgroundColor: Colors.black.withOpacity(0.8),
                  radius: 30,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      CupertinoIcons.volume_off,
                      color: kWHiteColor,
                      size: 30,
                    ),
                  ),
                ),
                //right side
                const Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: CircleAvatar(
                        radius: 32,
                        backgroundImage: NetworkImage(
                            'https://www.themoviedb.org/t/p/w300_and_h450_bestv2/vUUqzWa2LnHIVqkaKVlVGkVcZIW.jpg'),
                      ),
                    ),
                    VideoActionWidget(
                      icon: Icons.emoji_emotions,
                      title: 'LOL',
                    ),
                    VideoActionWidget(
                      icon: CupertinoIcons.add,
                      title: 'My List',
                    ),
                    VideoActionWidget(
                      icon: CupertinoIcons.paperplane,
                      title: 'Share',
                    ),
                    VideoActionWidget(
                      icon: CupertinoIcons.play,
                      title: 'Play',
                    )
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class VideoActionWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  const VideoActionWidget({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Column(
        children: [
          Icon(
            icon,
            color: kWHiteColor,
            size: 35,
            shadows: const <Shadow>[
              Shadow(
                color: Colors.black,
                blurRadius: 15.0,
              )
            ],
          ),
          Text(
            title,
            style: const TextStyle(
              fontSize: 14,
              color: kWHiteColor,
            ),
          ),
        ],
      ),
    );
  }
}
