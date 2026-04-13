import 'package:flutter/material.dart';

import 'web_shell_page.dart';

class WebShellApp extends StatelessWidget {
  const WebShellApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WebShellPage(),
    );
  }
}
