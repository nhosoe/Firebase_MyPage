import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class Adlib extends StatefulWidget {
  const Adlib({Key? key}) : super(key: key);

  @override
  State<Adlib> createState() => _AdlibState();
}

class _AdlibState extends State<Adlib> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children:  [
            const Padding (
              padding: EdgeInsets.only(top: 50, right: 50, left: 50),
              child: FittedBox(
                fit: BoxFit.fitWidth,
                child: Text(
                  "アドリブ演奏練習用Webサイト",
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    decorationStyle: TextDecorationStyle.double,
                    fontSize: 48,
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 30, right: 30, left: 30),
              child: Text(
                "ジャズで演奏されるアドリブ演奏の練習用として、ピアノの先生のご助言を頂いてサイトを制作。\n"
                    "アメリカの音楽大学では\"フラッシュカード\"と呼ばれる手法でアドリブ練習をすることがあり、\n"
                    "それを物理的なカードではなくWebブラウザの画面上に映し出している。",
                style: TextStyle(
                  fontSize: 16,
                ),
                overflow: TextOverflow.clip,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 30.0),
                    child:  Text(
                      "Webサイトへのリンク",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () async {
                      await launchUrlString("http://pepe-nari.pepper.jp/");
                    },
                    child: const Text(
                      "http://pepe-nari.pepper.jp/",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text(
                    "戻る",
                    style: TextStyle(
                        fontSize: 30
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
