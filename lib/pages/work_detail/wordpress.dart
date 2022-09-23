import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class Wordpress extends StatefulWidget {
  const Wordpress({Key? key}) : super(key: key);

  @override
  State<Wordpress> createState() => _WordpressState();
}

class _WordpressState extends State<Wordpress> {
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
                    "Wordpressブログサイト",
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
                  "自転車で街をぶらぶらのが一時ハマっていた時に作成したサイト。\n"
                      "途中で飽きて更新が止まっています。。(ToT)",
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
                        await launchUrlString("http://pepe-nari.pepper.jp/wordpress/");
                      },
                      child: const Text(
                        "http://pepe-nari.pepper.jp/wordpress/",
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
