import 'package:flutter/material.dart';
import '../widgets/big_text.dart';
import '../widgets/icon_and_text_widget.dart';
import '../widgets/small_text.dart';
import 'recipe_page.dart';


class RecipeOverview extends StatelessWidget {
  const RecipeOverview({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
           Expanded(child: SingleChildScrollView(
            child: RecipePageBody(),
          ),
          ),
        ],
      ),
    );
  }
}

class RecipePageBody extends StatefulWidget {
  const RecipePageBody({super.key});


  @override
  State<RecipePageBody> createState() => _RecipePageBodyState();
}

class _RecipePageBodyState extends State<RecipePageBody> {
  List recipes = [
    // [title, description, time, level, image]
    ['Lasagne', 'Beschreibung', '30 Min', 'Mittel', 'lib/images/Lasagne.png'],
    ['Spaghetti Bolognese', 'Beschreibung', '20 Min', 'Leicht', 'lib/images/Spaghetti.png'],
    ['Reis mit Gemüse', 'Beschreibung', '30 Min', 'Leicht', 'lib/images/Reis mit Gemuese.png'],
    ['Ofenkartoffeln', 'Beschreibung', '40 Min', 'Leicht', 'lib/images/Ofenkartoffeln.png'],
    ['Lasagne', 'Beschreibung', '30 Min', 'Mittel', 'lib/images/Lasagne.png'],
    ['Spaghetti Bolognese', 'Beschreibung', '20 Min', 'Leicht', 'lib/images/Spaghetti.png'],
    ['Reis mit Gemüse', 'Beschreibung', '30 Min', 'Leicht', 'lib/images/Reis mit Gemuese.png'],
    ['Ofenkartoffeln', 'Beschreibung', '40 Min', 'Leicht', 'lib/images/Ofenkartoffeln.png'],
    ['Lasagne', 'Beschreibung', '30 Min', 'Mittel', 'lib/images/Lasagne.png'],
    ['Spaghetti Bolognese', 'Beschreibung', '20 Min', 'Leicht', 'lib/images/Spaghetti.png'],
    ['Reis mit Gemüse', 'Beschreibung', '30 Min', 'Leicht', 'lib/images/Reis mit Gemuese.png'],
    ['Ofenkartoffeln', 'Beschreibung', '40 Min', 'Leicht', 'lib/images/Ofenkartoffeln.png'],
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Gespeicherte Rezepte
        Container(
          margin: const EdgeInsets.only(left: 12, bottom: 12),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              BigText(text: 'Meine Rezepte'),
              const SizedBox(width: 12),
              SmallText(text: '.'),
              const SizedBox(width: 12),
              SmallText(text: 'Gespeicherte Rezepte'),
            ],
          ),
        ),
        // Liste mit Rezepten
        Container(
          height: 700,
          child: ListView.builder(
            physics: const AlwaysScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 10,
            itemBuilder: (context, i) {
            return Container(
              margin: const EdgeInsets.only(left: 12, right: 12, bottom: 12),
              child: Row(
                children: [
                  //image section
                  InkWell(
                    child: Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        color: Colors.white,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(recipes[i][4]),
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const RecipePage(title: 'Ofenkartoffeln', description: 'xy', time: '20', level: 'leicht', image: 'lib/images/Ofenkartoffeln.png')),
                      );
                    },
                  ),
                  // text section
                  Expanded(
                    child: InkWell(
                      child: Container(
                          height: 100,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(12),
                              bottomRight: Radius.circular(12),
                            ),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20, right: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                BigText(text: recipes[i][0]),
                                const SizedBox(height: 12),
                                SmallText(text: recipes[i][1]),
                                const SizedBox(height: 12),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    IconAndText(icon: Icons.check_circle, text: recipes[i][3], color: Colors.black45, iconColor: Colors.lightGreen),
                                    IconAndText(icon: Icons.access_time_rounded, text: recipes[i][2], color: Colors.black45, iconColor: Colors.redAccent),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const RecipePage(title: 'Ofenkartoffeln', description: 'xy', time: '20', level: 'leicht', image: 'lib/images/Ofenkartoffeln.png')),
                          );
                        },
                    ),
                  ),
                ],
              ),
            );
          },
        ),

        ),
      ],
    );
  }
}
