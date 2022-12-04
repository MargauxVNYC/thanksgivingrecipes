import 'package:flutter/material.dart';
import 'fooderlich_theme.dart';

class Card2 extends StatelessWidget {
  const Card2({super.key});

  final String category = 'Dessert';
  final String title1 = 'Dessert 1';
  final String description1 = 'Enjoy some warm apple pie (or have it cold)!';

  @override
  Widget build(BuildContext context){
    // 3
    return Center(
      child: Container(
      // 1
      padding: const EdgeInsets.all(16), //padding of 16 on all sides
      // 2
      constraints: const BoxConstraints.expand(width: 350, height: 450),
      // 3
      decoration: const BoxDecoration(
        //describes how to draw the box
        // 4
        image: DecorationImage(
          //tell box to paint an image
          // 5
          image: AssetImage('assets/dessert1.jpg'),
          // 6
          fit: BoxFit.cover, //cover entire box with the image
        ),
        // 7
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
      child: Stack(
        children: [
          Text(
            category,
            style: FooderlichTheme.darkTextTheme.bodyText1,
          ),
          Positioned(
            top: 20,
            child: Text(
              title1,
              style: FooderlichTheme.darkTextTheme.headline2,
            ), //place title1 20 pixels from top
          ),
          Positioned(
            bottom:
                50, //place description 30 pixels from bottom and 0 to the right
            left: 0,
            child: Text(
              description1,
              style: FooderlichTheme.darkTextTheme.bodyText1,
              softWrap: false,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    ));
  }
}
