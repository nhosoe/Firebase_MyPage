import 'package:flutter/material.dart';

class Autowork extends StatefulWidget {
  const Autowork({Key? key}) : super(key: key);

  @override
  State<Autowork> createState() => _AutoworkState();
}

class _AutoworkState extends State<Autowork> {
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
                  "ルーティンワーク全自動化",
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
                "自動車に搭載されるナビは市場に出す前に検査を実施する。\n\n"
                    "検査後に検査結果を取りまとめ最終的には管理職への承認が必要。\n"
                    "その間の工程が複数に分かれていてかつ時間がかかっていた。\n\n"
                    "それに対して、一連の工程(※)を全自動化。30分→10分に削減することができた。",
                style: TextStyle(
                  fontSize: 16,
                ),
                overflow: TextOverflow.clip,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(top: 30.0),
                    child: FittedBox(
                      child: Text(
                        "(※)一連の工程\n"
                            "①検査したソフトバージョン、検査日時、検査実施者を記入\n        ↓\n"
                            "②検査の際に撮影した画像を資料に貼り付けて、明るさとコントラストを調整\n        ↓\n"
                            "③検査結果資料が複数あれば、同様に①②のフローを実行\n        ↓\n"
                            "④検査結果資料を１つのフォルダに入れて、zip圧縮\n        ↓\n"
                            "⑤zip圧縮したものをメールに貼り付けて、管理職へ送信",
                        style: TextStyle(
                          fontSize: 16,
                        ),
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
