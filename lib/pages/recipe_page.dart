import 'package:flutter/material.dart';

import '../utils/app_icon.dart';
import '../widgets/big_text.dart';
import '../widgets/recipe_column.dart';

class RecipePage extends StatelessWidget {
  final String title;
  final String description;
  final String time;
  final String level;
  final String image;
  const RecipePage({Key? key,
    required this.title,
    required this.description,
    required this.time,
    required this.level,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // background image
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: 350,
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                        image,
                    ),
                ),
              ),
          )),
          // icons on the top widgets
          Positioned(
              top: 45,
              left: 20,
              right: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppIcon(icon: Icons.arrow_back_ios),
                  AppIcon(icon: Icons.favorite_border_outlined),
                ],
          )),
          // description, level, time and ingredients text
          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              top: 350 - 20, //Dimensions.recipepageImgSize
              child: Container(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20)),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RecipeColumn(title: title, description: description, level: level, time: time),
                    const SizedBox(height: 20),
                    BigText(text: 'Zutaten'),
                    const SizedBox(height: 40),
                    BigText(text: 'Zubereitung'),
                  ],
                ),
              )),
        ],
      ),

    );
  }
}