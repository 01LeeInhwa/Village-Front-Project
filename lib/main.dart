import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:village/view/pages/chat/chat_room_page.dart';
import 'package:village/view/pages/common/oauth_page.dart';


void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // 화면에 디버그 제거
      home: OauthPage(), // 클래스 분리
    );
  }
}
