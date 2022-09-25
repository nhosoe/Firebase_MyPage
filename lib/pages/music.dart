import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:youtube/youtube_thumbnail.dart';

class Music extends StatefulWidget {
  const Music({Key? key}) : super(key: key);
  @override
  State<Music> createState() => _MusicState();
}
class _MusicState extends State<Music> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 50),
              child: Text(
                "Music",
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  decorationStyle: TextDecorationStyle.double,
                  fontSize: 48,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:30, right: 10, left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () async {
                      await launchUrlString("https://www.youtube.com/shorts/oR7lofyBj7k");
                    },
                    child: Image.network(YoutubeThumbnail(youtubeId: 'oR7lofyBj7k').small()),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left:10),
                    child: FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text(
                        "2020/3/某日\nコロナ初期の星野源さんの『うちで踊ろう』"
                            "\n私も影響されてキーボードでセッションに参加",
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:10, right: 10, left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () async {
                      await launchUrlString("https://www.youtube.com/shorts/mXrQxmPjY8k");
                    },
                    child: Image.network(YoutubeThumbnail(youtubeId: 'mXrQxmPjY8k').small()),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left:10),
                    //child: Text(),
                      child: FittedBox(
                        fit: BoxFit.fitWidth,
                        child: Text(
                          "2020/3/14\nコロナが流行る前に組んだバンド"
                              "\nボーカルは「Froots」グループで活動中",
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:10, right: 10, left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () async {
                      await launchUrlString("https://www.youtube.com/shorts/qTwN7bj-K0g");
                    },
                    child: Image.network(YoutubeThumbnail(youtubeId: 'qTwN7bj-K0g').small()),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left:10),
                    child: FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text(
                        "2018/2/11\n一緒に働いてる方とバンド結成\n"
                            "ボーカルが風邪で欠席、急遽ドラマーが唄うことに",
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:10, right: 10, left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () async {
                      await launchUrlString("https://www.youtube.com/watch?v=GJVzcv2eI-c&t=27s");
                    },
                    child: Image.network(YoutubeThumbnail(youtubeId: 'GJVzcv2eI-c').small()),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left:10),
                    child: FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text(
                        "2015/11/22\nアイシン精機の方々とバンドを組んでライブ"
                            "\nベースは大学院時代の後輩です",
                        style: TextStyle(fontSize: 12),
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

