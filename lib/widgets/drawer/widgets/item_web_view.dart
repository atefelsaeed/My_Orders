import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ItemWebView extends StatelessWidget {
  final String initialUrl;
  final String title;

  ItemWebView({required this.initialUrl, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title),),
      body: WebView(
        initialUrl: initialUrl,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}