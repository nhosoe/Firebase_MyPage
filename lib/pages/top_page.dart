import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_home_page/pages/music.dart';
import 'package:my_home_page/pages/work.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'profile.dart';

class TopPage extends StatefulWidget {
  const TopPage({Key? key}) : super(key: key);

  @override
  State<TopPage> createState() => _TopPageState();
}

class _TopPageState extends State<TopPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(
        //title: Text("Narihiro's Room"),
      //),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 0),
              child: Container(
                //color:Colors.blue,
                width: 600,
                height: 300,
                child: const Image(image: AssetImage("assets/images/kinkazan.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10, left: 10),
              child: Container(
                child: const FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Text(
                    "2022/8/19 岐阜の金華山山頂にて。地元に生まれてよかったと思わせてくれる景色。",
                    style: TextStyle(fontSize: 14),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    //width: 100,
                    //height: 100,
                    width: MediaQuery.of(context).size.width*0.1,
                    height: MediaQuery.of(context).size.height*0.12,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage("assets/images/profile.jpg")
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left:5),
                      child: FittedBox(
                        fit: BoxFit.fitWidth,
                        child: Text(
                          "Narihiro Suzuoki (鈴置 成洋)",
                          style: TextStyle(fontSize: 24),
                        ),
                      ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:0),
                    child: TextButton(
                      style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all(Colors.indigoAccent)
                      ),
                      child: const FittedBox(
                        fit: BoxFit.fitWidth,
                        child: Text(
                          "Profile",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      onPressed: () {
                        //Navigator.of(context).push(MaterialPageRoute(builder: (_) => const Profile()));
                        Navigator.of(context).push(
                          PageRouteBuilder(
                              pageBuilder: (context, animation, secondaryAnimation) {
                                return const Profile();
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
                  const Padding(
                    padding: EdgeInsets.only(left:40),
                    child: FaIcon(
                      FontAwesomeIcons.instagram,
                      color: Colors.indigoAccent,
                      size: 25,
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.all(3),
                      child: Material(
                        child: InkWell(
                          onTap: () async {
                            await launchUrlString("https://www.instagram.com/pepe_nari/");
                          },
                          child: const FittedBox(
                            fit: BoxFit.fitWidth,
                            child: Text(
                              "Instagram",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.indigoAccent,
                              ),
                            ),
                          ),
                        ),
                      )
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top:10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right:80),
                        child: TextButton(
                          style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all(Colors.indigoAccent)
                          ),
                          child: const FittedBox(
                            fit: BoxFit.fitWidth,
                            child: Text(
                              "Music",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          onPressed: () {
                            //Navigator.of(context).push(MaterialPageRoute(builder: (_) => const Profile()));
                            Navigator.of(context).push(
                              PageRouteBuilder(
                                pageBuilder: (context, animation, secondaryAnimation) {
                                  return const Music();
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
                  Padding(
                    padding: const EdgeInsets.only(right:20),
                    child: TextButton(
                      style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all(Colors.indigoAccent)
                      ),
                      child: const FittedBox(
                        fit: BoxFit.fitWidth,
                        child: Text(
                          "Work",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      onPressed: () {
                        //Navigator.of(context).push(MaterialPageRoute(builder: (_) => const Profile()));
                        Navigator.of(context).push(
                          PageRouteBuilder(
                            pageBuilder: (context, animation, secondaryAnimation) {
                              return const Work();
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
            ),
          ],
        ),
      ),
      
    );
  }
}
