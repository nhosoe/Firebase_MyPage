import 'dart:html';

import 'package:flutter/material.dart';
import 'package:my_home_page/pages/work_detail/Aggregation_of_worktime.dart';
import 'package:my_home_page/pages/work_detail/eggplant.dart';
import 'package:my_home_page/pages/work_detail/frequently_appearing_words.dart';
import 'package:my_home_page/pages/work_detail/komeda.dart';
import 'package:my_home_page/pages/work_detail/seikabutsu.dart';
import 'package:my_home_page/pages/work_detail/syucchoshinsei.dart';
import 'package:my_home_page/pages/work_detail/twitter_vs_apple.dart';
import 'package:my_home_page/pages/work_detail/wordpress.dart';

class Work extends StatefulWidget {
  const Work({Key? key}) : super(key: key);

  @override
  State<Work> createState() => _WorkState();
}

class _WorkState extends State<Work> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 50),
              child: Text(
                "Work",
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  decorationStyle: TextDecorationStyle.double,
                  fontSize: 48,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:30, left: 20, right: 0),
              child: Container(
                child: Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width*0.25,
                      height: MediaQuery.of(context).size.height*0.08,
                      alignment: Alignment.center,
                      color: Color.lerp(Colors.indigo, Colors.white,0.5),
                      child: const Expanded(
                        child: FittedBox(
                          fit: BoxFit.fitWidth,
                          child: Text(
                            " Web制作 ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width*0.65,
                          height: MediaQuery.of(context).size.height*0.04,
                          color: Color.lerp(Colors.indigo, Colors.white,0.9),
                          child: Expanded(
                            child: TextButton(
                              style: ButtonStyle(
                                foregroundColor: MaterialStateProperty.all(Colors.indigoAccent),
                                alignment: Alignment.topLeft,
                              ),
                              child: const FittedBox(
                                child: Text(
                                  "・コメダ珈琲店 スマホサイト制作",
                                  style: TextStyle(fontSize: 100),
                                ),
                              ),
                              onPressed: () {
                                Navigator.of(context).push(
                                  PageRouteBuilder(
                                    pageBuilder: (context, animation, secondaryAnimation) {
                                      return const Komeda();
                                    },
                                    transitionsBuilder: (context, animation, secondaryAnimation, child) {
                                      const double begin = 0;
                                      const double end = 0.90;
                                      Animatable<double> tween = Tween(begin:begin, end:end)
                                          .chain(CurveTween(curve: Curves.easeInOut));
                                      Animation<double> doubleAnimation = animation.drive(tween);
                                      return FadeTransition(
                                        opacity: doubleAnimation,
                                        child: child,
                                      );
                                    },
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width*0.65,
                          height: MediaQuery.of(context).size.height*0.04,
                          color: Color.lerp(Colors.indigo, Colors.white,0.9),
                          child: Expanded(
                            child: TextButton(
                              style: ButtonStyle(
                                foregroundColor: MaterialStateProperty.all(Colors.indigoAccent),
                                alignment: Alignment.topLeft,
                              ),
                              child: const FittedBox(
                                child: Text(
                                  "・Wordpressブログサイト",
                                  style: TextStyle(fontSize: 100),
                                ),
                              ),
                              onPressed: () {
                                Navigator.of(context).push(
                                  PageRouteBuilder(
                                    pageBuilder: (context, animation, secondaryAnimation) {
                                      return const Wordpress();
                                    },
                                    transitionsBuilder: (context, animation, secondaryAnimation, child) {
                                      const double begin = 0;
                                      const double end = 0.90;
                                      Animatable<double> tween = Tween(begin:begin, end:end)
                                          .chain(CurveTween(curve: Curves.easeInOut));
                                      Animation<double> doubleAnimation = animation.drive(tween);
                                      return FadeTransition(
                                        opacity: doubleAnimation,
                                        child: child,
                                      );
                                    },
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(top:15, left: 20, right: 0),
                child: Container(
                    child: Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width*0.25,
                        height: MediaQuery.of(context).size.height*0.08,
                        alignment: Alignment.center,
                        color: Color.lerp(Colors.green, Colors.white,0.2),
                        child: const Expanded(
                          child: FittedBox(
                              fit: BoxFit.fitWidth,
                              child: Text(
                                " データ解析 ",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                ),
                              )
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width*0.65,
                            height: MediaQuery.of(context).size.height*0.04,
                            color: Color.lerp(Colors.green, Colors.white,0.7),
                            child: Expanded(
                              child: TextButton(
                                style: ButtonStyle(
                                  foregroundColor: MaterialStateProperty.all(Colors.teal),
                                  alignment: Alignment.topLeft,
                                ),
                                child: const FittedBox(
                                  child: Text(
                                    "・SNS上のバズマーケティング調査",
                                    style: TextStyle(fontSize: 100),
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.of(context).push(
                                    PageRouteBuilder(
                                      pageBuilder: (context, animation, secondaryAnimation) {
                                        return const TwitterApple();
                                      },
                                      transitionsBuilder: (context, animation, secondaryAnimation, child) {
                                        const double begin = 0;
                                        const double end = 0.90;
                                        Animatable<double> tween = Tween(begin:begin, end:end)
                                            .chain(CurveTween(curve: Curves.easeInOut));
                                        Animation<double> doubleAnimation = animation.drive(tween);
                                        return FadeTransition(
                                          opacity: doubleAnimation,
                                          child: child,
                                        );
                                      },
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width*0.65,
                            height: MediaQuery.of(context).size.height*0.04,
                            color: Color.lerp(Colors.green, Colors.white,0.7),
                            child: Expanded(
                              child: TextButton(
                                style: ButtonStyle(
                                  foregroundColor: MaterialStateProperty.all(Colors.teal),
                                  alignment: Alignment.topLeft,
                                ),
                                child: const FittedBox(
                                  child: Text(
                                    "・大量の文章から頻出単語を可視化",
                                    style: TextStyle(fontSize: 100),
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.of(context).push(
                                    PageRouteBuilder(
                                      pageBuilder: (context, animation, secondaryAnimation) {
                                        return const FreqWords();
                                      },
                                      transitionsBuilder: (context, animation, secondaryAnimation, child) {
                                        const double begin = 0;
                                        const double end = 0.90;
                                        Animatable<double> tween = Tween(begin:begin, end:end)
                                            .chain(CurveTween(curve: Curves.easeInOut));
                                        Animation<double> doubleAnimation = animation.drive(tween);
                                        return FadeTransition(
                                          opacity: doubleAnimation,
                                          child: child,
                                        );
                                      },
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ]
                )
              )
            ),
            Padding(
                padding: const EdgeInsets.only(top:15, left: 20, right: 0),
                child: Container(
                    child: Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width*0.25,
                            height: MediaQuery.of(context).size.height*0.16,
                            alignment: Alignment.center,
                            color: Color.lerp(Colors.red, Colors.white,0.3),
                            child: const Expanded(
                                child: FittedBox(
                                  fit: BoxFit.fitWidth,
                                  child: Text(
                                    "       DX \n (業務自動化) ",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24,
                                    ),
                                  ),
                                ),
                            ),
                          ),
                          Column(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width*0.65,
                                height: MediaQuery.of(context).size.height*0.04,
                                color: Color.lerp(Colors.red, Colors.white,0.7),
                                child: Expanded(
                                  child: TextButton(
                                    style: ButtonStyle(
                                      foregroundColor: MaterialStateProperty.all(Colors.redAccent),
                                      alignment: Alignment.topLeft,
                                    ),
                                    child: const FittedBox(
                                      child: Text(
                                        "・全社員の勤務表から稼働時間集計",
                                        style: TextStyle(fontSize: 100),
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.of(context).push(
                                        PageRouteBuilder(
                                          pageBuilder: (context, animation, secondaryAnimation) {
                                            return const Kinmu();
                                          },
                                          transitionsBuilder: (context, animation, secondaryAnimation, child) {
                                            const double begin = 0;
                                            const double end = 0.90;
                                            Animatable<double> tween = Tween(begin:begin, end:end)
                                                .chain(CurveTween(curve: Curves.easeInOut));
                                            Animation<double> doubleAnimation = animation.drive(tween);
                                            return FadeTransition(
                                              opacity: doubleAnimation,
                                              child: child,
                                            );
                                          },
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width*0.65,
                                height: MediaQuery.of(context).size.height*0.04,
                                color: Color.lerp(Colors.red, Colors.white,0.7),
                                child: Expanded(
                                  child: TextButton(
                                    style: ButtonStyle(
                                      foregroundColor: MaterialStateProperty.all(Colors.redAccent),
                                      alignment: Alignment.topLeft,
                                    ),
                                    child: const FittedBox(
                                      child: Text(
                                        "・出張申請システム 自動申請",
                                        style: TextStyle(fontSize: 100),
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.of(context).push(
                                        PageRouteBuilder(
                                          pageBuilder: (context, animation, secondaryAnimation) {
                                            return const Syucchoshinsei();
                                          },
                                          transitionsBuilder: (context, animation, secondaryAnimation, child) {
                                            const double begin = 0;
                                            const double end = 0.90;
                                            Animatable<double> tween = Tween(begin:begin, end:end)
                                                .chain(CurveTween(curve: Curves.easeInOut));
                                            Animation<double> doubleAnimation = animation.drive(tween);
                                            return FadeTransition(
                                              opacity: doubleAnimation,
                                              child: child,
                                            );
                                          },
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width*0.65,
                                height: MediaQuery.of(context).size.height*0.04,
                                color: Color.lerp(Colors.red, Colors.white,0.7),
                                child: Expanded(
                                  child: TextButton(
                                    style: ButtonStyle(
                                      foregroundColor: MaterialStateProperty.all(Colors.redAccent),
                                      alignment: Alignment.topLeft,
                                    ),
                                    child: const FittedBox(
                                      child: Text(
                                        "・成果物とりまとめ自動化ツール",
                                        style: TextStyle(fontSize: 100),
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.of(context).push(
                                        PageRouteBuilder(
                                          pageBuilder: (context, animation, secondaryAnimation) {
                                            return const Seikabutsu();
                                          },
                                          transitionsBuilder: (context, animation, secondaryAnimation, child) {
                                            const double begin = 0;
                                            const double end = 0.90;
                                            Animatable<double> tween = Tween(begin:begin, end:end)
                                                .chain(CurveTween(curve: Curves.easeInOut));
                                            Animation<double> doubleAnimation = animation.drive(tween);
                                            return FadeTransition(
                                              opacity: doubleAnimation,
                                              child: child,
                                            );
                                          },
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width*0.65,
                                height: MediaQuery.of(context).size.height*0.04,
                                color: Color.lerp(Colors.red, Colors.white,0.7),
                                child: Expanded(
                                  child: TextButton(
                                    style: ButtonStyle(
                                      foregroundColor: MaterialStateProperty.all(Colors.redAccent),
                                      alignment: Alignment.topLeft,
                                    ),
                                    child: const FittedBox(
                                      child: Text(
                                        "・Eggplantによるカーナビ評価自動化",
                                        style: TextStyle(fontSize: 100),
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.of(context).push(
                                        PageRouteBuilder(
                                          pageBuilder: (context, animation, secondaryAnimation) {
                                            return const Eggplant();
                                          },
                                          transitionsBuilder: (context, animation, secondaryAnimation, child) {
                                            const double begin = 0;
                                            const double end = 0.90;
                                            Animatable<double> tween = Tween(begin:begin, end:end)
                                                .chain(CurveTween(curve: Curves.easeInOut));
                                            Animation<double> doubleAnimation = animation.drive(tween);
                                            return FadeTransition(
                                              opacity: doubleAnimation,
                                              child: child,
                                            );
                                          },
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ]
                    )
                )
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
