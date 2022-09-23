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
                "市場に出ている自動車において、搭載されているカーナビでユーザーからディーラーへ報告されている\n"
                    "不具合を一覧化したデータ・報告文章の中から頻出単語を調査し、どの機能で不具合の量\n"
                    "多いかを定量的に解析。これにより、不具合の修正にあたり優先度の判断基準につながった。",
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
                        "※実際の結果はお客様の機密情報で提示できないためイメージ図",
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
                          fontSize: 16,
                          color: Colors.blueAccent,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    //color:Colors.blue,
                    width: 300,
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
