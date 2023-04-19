import 'package:flutter/material.dart';

class HomeTitle extends StatelessWidget {
  final String title;

  const HomeTitle(this.title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    );
  }
}
