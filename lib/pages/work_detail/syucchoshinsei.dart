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
