import 'package:flutter/material.dart';

class Syucchoshinsei extends StatefulWidget {
  const Syucchoshinsei({Key? key}) : super(key: key);

  @override
  State<Syucchoshinsei> createState() => _SyucchoshinseiState();
}

class _SyucchoshinseiState extends State<Syucchoshinsei> {
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
                  "出張申請システムの申請手続き効率化",
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
                "顧客からの要望。出張申請Webシステムの入力欄が多く申請に時間がかかるので\n"
                    "効率化してほしいという要望に対して効率化の検討を開始。\n\n"
                    "過去の申請内容を調査した結果、入力項目の内、6割は変わらず固定であることが判明。\n\n"
                    "そこで事前にExcelに入力してその内容をWebシステム側へ反映・申請する仕組みを構築。\n"
                    "これにより１申請あたり30分→10分に削減することができた。",
                style: TextStyle(
                  fontSize: 16,
                ),
                overflow: TextOverflow.clip,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:10),
              child: Container(
                width: 380,
                height: 230,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("assets/images/syucchoshinsei.jpg")
                  ),
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
