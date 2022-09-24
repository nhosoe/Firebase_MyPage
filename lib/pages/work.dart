import 'package:flutter/material.dart';
import 'package:my_home_page/pages/work_detail/aggregation_of_worktime.dart';
import 'package:my_home_page/pages/work_detail/adlib.dart';
import 'package:my_home_page/pages/work_detail/frequently_appearing_words.dart';
import 'package:my_home_page/pages/work_detail/komeda.dart';
import 'package:my_home_page/pages/work_detail/autowork.dart';
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
              padding: const EdgeInsets.only(top:30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width*0.20,
                    height: MediaQuery.of(context).size.height*0.15,
                    alignment: Alignment.center,
                    color: Color.lerp(Colors.indigo, Colors.white,0.5),
                    child: const FittedBox(
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
                  Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width*0.55,
                        height: MediaQuery.of(context).size.height*0.05,
                        color: Color.lerp(Colors.indigo, Colors.white,0.9),
                        child: TextButton(
                          style: ButtonStyle(
                            foregroundColor: MaterialStateProperty.all(Colors.indigoAccent),
                            backgroundColor: MaterialStateProperty.resolveWith(
                                    (Set<MaterialState> states) {
                                      Color? color = Color.lerp(Colors.indigo, Colors.white,0.9);
                                      if(states.contains(MaterialState.hovered)) {
                                        color = Color.lerp(color, Colors.blueAccent, 0.2);
                                      }
                                      if(states.contains(MaterialState.pressed)) {
                                        color = Color.lerp(color, Colors.blueAccent, 0.3);
                                      }
                                      return color;
                                    }),
                            alignment: Alignment.topLeft,
                          ),
                          child: const FittedBox(
                            child: Text(
                              "・コメダ珈琲店 スマホサイト制作",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24
                              ),
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
                      Container(
                        width: MediaQuery.of(context).size.width*0.55,
                        height: MediaQuery.of(context).size.height*0.05,
                        color: Color.lerp(Colors.indigo, Colors.white,0.9),
                        child: TextButton(
                          style: ButtonStyle(
                            foregroundColor: MaterialStateProperty.all(Colors.indigoAccent),
                            backgroundColor: MaterialStateProperty.resolveWith(
                                    (Set<MaterialState> states) {
                                  Color? color = Color.lerp(Colors.indigo, Colors.white,0.9);
                                  if(states.contains(MaterialState.hovered)) {
                                    color = Color.lerp(color, Colors.blueAccent, 0.2);
                                  }
                                  if(states.contains(MaterialState.pressed)) {
                                    color = Color.lerp(color, Colors.blueAccent, 0.3);
                                  }
                                  return color;
                                }),
                            alignment: Alignment.topLeft,
                          ),
                          child: const FittedBox(
                            child: Text(
                              "・アドリブ演奏練習用Webサイト",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                              ),
                            ),
                          ),
                          onPressed: () {
                            Navigator.of(context).push(
                              PageRouteBuilder(
                                pageBuilder: (context, animation, secondaryAnimation) {
                                  return const Adlib();
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
                      Container(
                        width: MediaQuery.of(context).size.width*0.55,
                        height: MediaQuery.of(context).size.height*0.05,
                        color: Color.lerp(Colors.indigo, Colors.white,0.9),
                        child: TextButton(
                          style: ButtonStyle(
                            foregroundColor: MaterialStateProperty.all(Colors.indigoAccent),
                            backgroundColor: MaterialStateProperty.resolveWith(
                                    (Set<MaterialState> states) {
                                  Color? color = Color.lerp(Colors.indigo, Colors.white,0.9);
                                  if(states.contains(MaterialState.hovered)) {
                                    color = Color.lerp(color, Colors.blueAccent, 0.2);
                                  }
                                  if(states.contains(MaterialState.pressed)) {
                                    color = Color.lerp(color, Colors.blueAccent, 0.3);
                                  }
                                  return color;
                                }),
                            alignment: Alignment.topLeft,
                          ),
                          child: const FittedBox(
                            child: Text(
                              "・Wordpressブログサイト",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                              ),
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

                    ],
                  ),
                ],
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(top:15),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width*0.20,
                    height: MediaQuery.of(context).size.height*0.10,
                    alignment: Alignment.center,
                    color: Color.lerp(Colors.green, Colors.white,0.2),
                    child: const FittedBox(
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
                  Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width*0.55,
                        height: MediaQuery.of(context).size.height*0.05,
                        color: Color.lerp(Colors.green, Colors.white,0.7),
                        child: TextButton(
                          style: ButtonStyle(
                            foregroundColor: MaterialStateProperty.all(Colors.teal),
                            backgroundColor: MaterialStateProperty.resolveWith(
                                    (Set<MaterialState> states) {
                                  Color? color = Color.lerp(Colors.green, Colors.white,0.7);
                                  if(states.contains(MaterialState.hovered)) {
                                    color = Color.lerp(color, Colors.green, 0.2);
                                  }
                                  if(states.contains(MaterialState.pressed)) {
                                    color = Color.lerp(color, Colors.green, 0.3);
                                  }
                                  return color;
                                }),
                            alignment: Alignment.topLeft,
                          ),
                          child: const FittedBox(
                            child: Text(
                              "・SNSの口コミと購買行動への影響度調査",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                              ),
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
                      Container(
                        width: MediaQuery.of(context).size.width*0.55,
                        height: MediaQuery.of(context).size.height*0.05,
                        color: Color.lerp(Colors.green, Colors.white,0.7),
                        child: TextButton(
                          style: ButtonStyle(
                            foregroundColor: MaterialStateProperty.all(Colors.teal),
                            backgroundColor: MaterialStateProperty.resolveWith(
                                    (Set<MaterialState> states) {
                                  Color? color = Color.lerp(Colors.green, Colors.white,0.7);
                                  if(states.contains(MaterialState.hovered)) {
                                    color = Color.lerp(color, Colors.green, 0.2);
                                  }
                                  if(states.contains(MaterialState.pressed)) {
                                    color = Color.lerp(color, Colors.green, 0.3);
                                  }
                                  return color;
                                }),
                            alignment: Alignment.topLeft,
                          ),
                          child: const FittedBox(
                            child: Text(
                              "・大量の文章から頻出単語を可視化",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                              ),
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
                    ],
                  ),
                ]
                )
            ),
            Padding(
                padding: const EdgeInsets.only(top:15),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width*0.20,
                        height: MediaQuery.of(context).size.height*0.15,
                        alignment: Alignment.center,
                        color: Color.lerp(Colors.red, Colors.white,0.3),
                        child: const FittedBox(
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
                      Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width*0.55,
                            height: MediaQuery.of(context).size.height*0.05,
                            color: Color.lerp(Colors.red, Colors.white,0.7),
                            child: TextButton(
                              style: ButtonStyle(
                                foregroundColor: MaterialStateProperty.all(Colors.redAccent),
                                backgroundColor: MaterialStateProperty.resolveWith(
                                        (Set<MaterialState> states) {
                                      Color? color = Color.lerp(Colors.red, Colors.white,0.7);
                                      if(states.contains(MaterialState.hovered)) {
                                        color = Color.lerp(color, Colors.red, 0.2);
                                      }
                                      if(states.contains(MaterialState.pressed)) {
                                        color = Color.lerp(color, Colors.red, 0.3);
                                      }
                                      return color;
                                    }),
                                alignment: Alignment.topLeft,
                              ),
                              child: const FittedBox(
                                child: Text(
                                  "・全社員の勤務時間の集計・給与計算",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24,
                                  ),
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
                          Container(
                            width: MediaQuery.of(context).size.width*0.55,
                            height: MediaQuery.of(context).size.height*0.05,
                            color: Color.lerp(Colors.red, Colors.white,0.7),
                            child: TextButton(
                              style: ButtonStyle(
                                foregroundColor: MaterialStateProperty.all(Colors.redAccent),
                                backgroundColor: MaterialStateProperty.resolveWith(
                                        (Set<MaterialState> states) {
                                      Color? color = Color.lerp(Colors.red, Colors.white,0.7);
                                      if(states.contains(MaterialState.hovered)) {
                                        color = Color.lerp(color, Colors.red, 0.2);
                                      }
                                      if(states.contains(MaterialState.pressed)) {
                                        color = Color.lerp(color, Colors.red, 0.3);
                                      }
                                      return color;
                                    }),
                                alignment: Alignment.topLeft,
                              ),
                              child: const FittedBox(
                                child: Text(
                                  "・出張申請システムの申請手続き効率化",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24
                                  ),
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
                          Container(
                            width: MediaQuery.of(context).size.width*0.55,
                            height: MediaQuery.of(context).size.height*0.05,
                            color: Color.lerp(Colors.red, Colors.white,0.7),
                            child: TextButton(
                              style: ButtonStyle(
                                foregroundColor: MaterialStateProperty.all(Colors.redAccent),
                                backgroundColor: MaterialStateProperty.resolveWith(
                                        (Set<MaterialState> states) {
                                      Color? color = Color.lerp(Colors.red, Colors.white,0.7);
                                      if(states.contains(MaterialState.hovered)) {
                                        color = Color.lerp(color, Colors.red, 0.2);
                                      }
                                      if(states.contains(MaterialState.pressed)) {
                                        color = Color.lerp(color, Colors.red, 0.3);
                                      }
                                      return color;
                                    }),
                                alignment: Alignment.topLeft,
                              ),
                              child: const FittedBox(
                                child: Text(
                                  "・ルーティンワーク全自動化",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24,
                                  ),
                                ),
                              ),
                              onPressed: () {
                                Navigator.of(context).push(
                                  PageRouteBuilder(
                                    pageBuilder: (context, animation, secondaryAnimation) {
                                      return const Autowork();
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
                        ],
                      ),
                    ]
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
