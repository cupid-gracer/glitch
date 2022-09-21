import 'dart:io';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewScreen extends StatefulWidget {
  const WebViewScreen({Key? key}) : super(key: key);

  static const routeName = '/webview-screen';

  @override
  WebViewScreenState createState() => WebViewScreenState();
}

class WebViewScreenState extends State<WebViewScreen> {
  @override
  void initState() {
    super.initState();
    // Enable virtual display.
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    // return const WebView(initialUrl: 'https://flutter.dev');

    return Scaffold(
        appBar: AppBar(
          title: const Text('9litch View App'),
        ),
        body: const WebView(
          initialUrl: 'http://www.9litch.com',
          javascriptMode: JavascriptMode.unrestricted,
          zoomEnabled: true,
        ));
  }
}
