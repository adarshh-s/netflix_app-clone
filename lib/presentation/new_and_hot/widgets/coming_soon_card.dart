import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:netflix_app/presentation/home/widgets/custom_icon_button_widget.dart';

class ComingSoonCard extends StatelessWidget {
  const ComingSoonCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
      child: Row(
        children: [
          const SizedBox(
            width: 50,
            height: 480,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'NOV',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey,
                  ),
                ),
                kHeight4,
                Text(
                  '11',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            width: size.width - 50,
            height: 480,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                kHeightTile,
                Stack(
                  children: [
                    const SizedBox(
                      width: double.infinity,
                      height: 200,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                              'https://www.themoviedb.org/t/p/w355_and_h200_multi_faces/tl0mg7lOnS6tP8ngH0QwgMLQdpV.jpg',
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 5,
                      bottom: 5,
                      child: CircleAvatar(
                        backgroundColor: Colors.black.withOpacity(0.8),
                        radius: 20,
                        child: const Icon(
                          CupertinoIcons.volume_down,
                          color: kWHiteColor,
                          size: 20,
                        ),
                      ),
                    ),
                  ],
                ),
                kHeight,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 50,
                      width: 180,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            'https://occ-0-4994-2186.1.nflxso.net/dnm/api/v6/tx1O544a9T7n8Z_G12qaboulQQE/AAAABaAeULAH-SXwCFKV2OL4zYtQnPMfECTHRccNWkxs6jab029MWe2mUXkvYEuqy2TxvcQOO-jRvmt0NwPfj0eKySgFm2vYLzNU9dcSP9nMBdutyUtGoRzBYVGsaUonred8oTFe60VkHM2zT8VsKWaqU6Wzjr_VfdnGbbazvLKEHXQnrFAcM-TZYw.png?r=cd7',
                          ),
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
                    Spacer(),
                    const Row(
                      children: [
                        MainIconButtonWidget(
                          icon: CupertinoIcons.bell,
                          text: 'Remind Me',
                          textSize: 14,
                          iconSize: 20,
                          color: Colors.grey,
                        ),
                        kWidth22,
                        MainIconButtonWidget(
                          icon: Icons.info_outline,
                          text: 'Info',
                          textSize: 14,
                          iconSize: 20,
                          color: Colors.grey,
                        ),
                        kWidth22
                      ],
                    )
                  ],
                ),
                kHeight10,
                const Text(
                  'Coming on Friday',
                  style: TextStyle(
                      color: kWHiteColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                kHeight10,
                const Text(
                  'Elite',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                kHeight10,
                const Text(
                  'When three working-class teens enroll in an exclusive private school in Spain, the --clash-- between them and the wealthy students leads to murder.',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
