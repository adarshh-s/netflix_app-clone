import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/core/constants.dart';
import 'package:stroke_text/stroke_text.dart';

class NumberCard extends StatelessWidget {
  final int index;
  const NumberCard({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Row(
          children: [
            const SizedBox(
              height: 230,
              width: 40,
            ),
            Container(
              width: screenWidth * 0.4,
              height: 230,
              decoration: BoxDecoration(
                borderRadius: kRadius10,
                image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      'https://www.themoviedb.org/t/p/w300_and_h450_bestv2/cZ0d3rtvXPVvuiX22sP79K3Hmjz.jpg',
                    )),
              ),
            ),
          ],
        ),
        Positioned(
          left: 0,
          top: 98,
          child: StrokeText(
            text: '${index + 1}',
            textStyle: const TextStyle(fontSize: 140, color: Colors.black),
            strokeColor: kWHiteColor,
            strokeWidth: 7,
          ),
        )
      ],
    );
  }
}
