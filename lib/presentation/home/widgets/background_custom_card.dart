import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/home/widgets/custom_icon_button_widget.dart';

class BackgroundCard extends StatelessWidget {
  const BackgroundCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 650,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(KmainImage),
            ),
          ),
        ),
        Positioned(
          bottom: 10,
          left: 0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const MainIconButtonWidget(
                icon: CupertinoIcons.add,
                text: 'My List',
              ),
              playButton(),
              const MainIconButtonWidget(
                icon: Icons.info_outline,
                text: 'Info',
              )
            ],
          ),
        )
      ],
    );
  }

  TextButton playButton() {
    return TextButton.icon(
      onPressed: () {},
      icon: const Icon(
        CupertinoIcons.play_fill,
        color: kBlackColor,
        size: 25,
      ),
      label: const Text(
        'Play',
        style: TextStyle(
            color: kBlackColor, fontWeight: FontWeight.bold, fontSize: 17),
      ),
      style: const ButtonStyle(
          fixedSize: MaterialStatePropertyAll(Size(110, 40)),
          backgroundColor: MaterialStatePropertyAll(
            kWHiteColor,
          )),
    );
  }
}
