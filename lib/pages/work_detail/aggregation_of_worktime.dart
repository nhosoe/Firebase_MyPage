import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class Kinmu extends StatefulWidget {
  const Kinmu({Key? key}) : super(key: key);

  @override
  State<Kinmu> createState() => _KinmuState();
}

class _KinmuState extends State<Kinmu> {
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
                  "全社員の勤務時間の集計・給与計算",
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
                "全社員の勤務表Excelから、勤務時間を集計して給与計算するシステムを構築。\n"
                    "約30名ほどの従業員を対象に導入実績あり。",
                style: TextStyle(
                  fontSize: 16,
                ),
                overflow: TextOverflow.clip,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 30),
              child: FittedBox(
                child: Text(
                  "※機密情報で実際のシステムは提示できないため下記イメージ",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width*0.7,
              height: MediaQuery.of(context).size.height*0.35,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("assets/images/kinmu_image.jpg")
                ),
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
