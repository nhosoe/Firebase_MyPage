import 'package:flutter/material.dart';

class Kinmu extends StatefulWidget {
  const Kinmu({Key? key}) : super(key: key);

  @override
  State<Kinmu> createState() => _KinmuState();
}

class _KinmuState extends State<Kinmu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Padding (
              padding: EdgeInsets.all(50),
              child: Text(
                "準備中",
                style: TextStyle(
                  fontSize: 48,
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
