import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class Komeda extends StatefulWidget {
  const Komeda({Key? key}) : super(key: key);

  @override
  State<Komeda> createState() => _KomedaState();
}

class _KomedaState extends State<Komeda> {
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
                  "コメダ珈琲店　スマホサイト制作",
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
                  "株式会社NTTドコモ東海と4大学との産学共同プロジェクト「NEXT COMMUNICATION FORUM 2012」に、\n"
                      "スマートフォン企画・開発コンテストの部門に参加。\n"
                      "応募作品687作品中、一次審査を通過し、最終審査会では敢闘賞を受賞。\n"
                      "制作した「レンガ調デザイン」が公式サイトに採用され、2013/3/27に公開された。",
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
                  const SizedBox(
                    //color:Colors.blue,
                    width: 200,
                    height: 350,
                    child: Image(image: AssetImage("assets/images/komeda.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 30.0),
                    child:  Text(
                      "リンク",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () async {
                      await launchUrlString("https://www.docomo.ne.jp/info/notice/tokai/page/121213_00.html");
                    },
                    child: const Text(
                      "https://www.docomo.ne.jp/info/notice/tokai/page/121213_00.html",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () async {
                      await launchUrlString("https://www.docomo.ne.jp/info/notice/tokai/page/130321_00.html");
                    },
                    child: const Text(
                      "https://www.docomo.ne.jp/info/notice/tokai/page/130321_00.html",
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
