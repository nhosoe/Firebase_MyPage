import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class FreqWords extends StatefulWidget {
  const FreqWords({Key? key}) : super(key: key);

  @override
  State<FreqWords> createState() => _FreqWordsState();
}

class _FreqWordsState extends State<FreqWords> {
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
                  "大量の文章から頻出単語を可視化",
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
                "市場に出ている自動車において、搭載されているカーナビでユーザーからディーラーへ\n"
                    "報告されている不具合を一覧化したデータ・報告文章の中から頻出単語を調査。\n\n"
                    "不具合が多い機能(ナビ、Audioなど)を定量的に解析。\n"
                    "これにより、修正する不具合に対する優先度の判断基準につながった。",
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
                    child: FittedBox(
                      child: Text(
                        "※機密情報で実際の結果は提示できないため下記イメージ",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () async {
                      await launchUrlString("https://www.nikkei.com/article/DGXZQOUA060VB0W1A201C2000000/");
                    },
                    child: const FittedBox(
                      child: Text(
                        "https://www.nikkei.com/article/DGXZQOUA060VB0W1A201C2000000/",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.blueAccent,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    //color:Colors.blue,
                    width: 350,
                    height: 200,
                    child: Image(image: AssetImage("assets/images/example_WordCloud.jpg"),
                      fit: BoxFit.cover,
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
