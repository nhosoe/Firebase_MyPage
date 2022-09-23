import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:youtube/youtube_thumbnail.dart';

class TwitterApple extends StatefulWidget {
  const TwitterApple({Key? key}) : super(key: key);

  @override
  State<TwitterApple> createState() => _TwitterAppleState();
}

class _TwitterAppleState extends State<TwitterApple> {
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
                  "SNS上の口コミよる商品売り上げへの影響度調査",
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    decorationStyle: TextDecorationStyle.double,
                    fontSize: 48,
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(30),
              child: Text(
                    "Twitter上での口コミ効果が、商品の売れ行きにどう影響しているかを調査するため、\n"
                    "Apple社のモバイル端末 iPhone・iPod向けアプリケーションのダウンロードサービスである\n"
                    " 「iTunes App Store」 を対象とした。\n"
                    "統計解析の結果として、iTunes App Store ランキング急上昇前にはリツイートの増加が\n"
                        "見られたが、特にゲームアプリが顕著であることが判明。\n"
                    "また、ランキング急上昇はリツイートの数よりも、リツイートの元となるツイートを発信した\n"
                    "特定のユーザーが重要であることを明らかにした。",
                style: TextStyle(
                  fontSize: 16,
                ),
                overflow: TextOverflow.clip,
              ),
            ),
            InkWell(
              onTap: () async {
                await launchUrlString("https://www.youtube.com/watch?v=hM97H0-ocJo");
              },
              child: Image.network(YoutubeThumbnail(youtubeId: 'hM97H0-ocJo').mq()),
            ),
            Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                children: [
                  const Text(
                    "本研究結果はCNET様とITmedia様にて報道",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  InkWell(
                    onTap: () async {
                      await launchUrlString("https://japan.cnet.com/article/35040801/");
                    },
                    child: const Text(
                      "https://japan.cnet.com/article/35040801/",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () async {
                      await launchUrlString("https://www.itmedia.co.jp/mobile/articles/1312/03/news088.html");
                    },
                    child: const Text(
                      "https://www.itmedia.co.jp/mobile/articles/1312/03/news088.html",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 10.0),
                    child: Text(
                      "情報処理学会 山下記念研究賞を受賞研究",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () async {
                      await launchUrlString("https://www.ipsj.or.jp/award/yamashita2014.html");
                    },
                    child: const Text(
                      "https://www.ipsj.or.jp/award/yamashita2014.html",
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
              padding: const EdgeInsets.only(top: 30),
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
