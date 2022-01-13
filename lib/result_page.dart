import 'dart:math';

import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          child: const Text('Come back'),
          onPressed: () {
            Navigator.pop(context, Random().nextInt(100));
          },
        ),
      ),
    );
  }
}
