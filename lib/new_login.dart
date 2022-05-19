import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewStack extends StatefulWidget {
  const WebViewStack({Key? key}) : super(key: key);

  @override
  State<WebViewStack> createState() => _WebViewStackState();
}

class _WebViewStackState extends State<WebViewStack> {
  var loadingPercentage = 0;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
         backgroundColor: Color.fromARGB(255, 1, 11, 66),
        title: const Text('Login'),
        centerTitle: true,
      ),
      body: const WebView(
        initialUrl: 'http://drhibasaadeh.com/login/',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}