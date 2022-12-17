import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final image;

  DetailScreen({required this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('LIL\’ SIKHS DAILY PRAYER '),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Row(
              children: [
                Image.asset(
                  'assets/icons/read_icon.png',
                  scale: 2.8,
                ),
                const SizedBox(width: 15),
                Image.asset(
                  'assets/icons/share_icon.png',
                  scale: 2.8,
                ),
              ],
            ),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.22,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 0.5,
                      offset: const Offset(0, 1), // changes position of shadow
                    )
                  ]),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                        'सफलता की सबसे खास बात है कि, वो मेहनत करने वालों पर फिदा हो जाती है मैं "दूसरों के चेहरे हम याद रखें हमारी ऐसी फितरत नहीं लोग हमारा चेहरा देख के अपनी फितरत बदल ले ऐसी हमारी फितरत है '),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                    Image.asset(
                      'assets/icons/play_icon.png',
                      scale: 2,
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Image.asset(
                image,
                scale: 3,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
