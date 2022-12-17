import 'package:flutter/material.dart';
import 'package:lilsikh/screens/langauge_screen.dart';

import 'details_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> imagesList = [
    'assets/images/option_1.png',
    'assets/images/option_2.png',
    'assets/images/option_3.png',
    'assets/images/option_4.png',
    'assets/images/option_5.png',
    'assets/images/option_6.png',
    'assets/images/option_7.png',
    'assets/images/option_8.png',
    'assets/images/option_9.png',
    'assets/images/option_10.png',
    'assets/images/option_11.png',
    'assets/images/option_12.png',
    'assets/images/option_13.png',
    'assets/images/option_14.png',
  ];

  List<String> titleList = [
    'When we wake up',
    'When we take a bath',
    'When we comb our hair',
    'Before we eat',
    'Feeling scared',
    'When we are about to travel',
    'Sneezing',
    'Feeling angry',
    'Praying',
    'Going to bed',
    'When we feel sad',
    'Feeling lonely',
    'When it rains',
    'When it snows',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('LIL\’ SIKHS DAILY PRAYER '),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Row(
              children: [
                Image.asset(
                  'assets/icons/message_icon.png',
                  scale: 2.5,
                ),
                const SizedBox(width: 15),
                GestureDetector(
                  child: Image.asset(
                    'assets/icons/setting_icon.png',
                    scale: 2.5,
                  ),
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => LanguageScreen())),
                ),
              ],
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        child: GridView.builder(
          itemCount: imagesList.length,
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 5,
            mainAxisSpacing: 2,
            childAspectRatio: 0.85,
          ),
          itemBuilder: (context, index) {
            return GestureDetector(
              child: Container(
                margin: const EdgeInsets.all(2),
                child: Image(
                  image: AssetImage(imagesList[index]),
                  fit: BoxFit.fill,
                ),
              ),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(
                    image: imagesList[index],
                    title: titleList[index],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
