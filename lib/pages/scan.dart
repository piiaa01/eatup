import 'package:flutter/material.dart';

class Scan extends StatelessWidget {
  const Scan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Bild scannen',
        style: TextStyle(fontSize: 50),
      ),
    );
  }
}