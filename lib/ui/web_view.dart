import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebPage extends StatefulWidget {
  @override
  State<WebPage> createState() => _WebPageState();
}

class _WebPageState extends State<WebPage> {
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();
  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) {
      WebView.platform = SurfaceAndroidWebView();
    }
  }

  String url = 'https://www.facebook.com/thejhumurhotel';
  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: url,
      onWebViewCreated: (WebViewController webViewController) {
        _controller.complete(webViewController);
      },
    );
  }
}

class WebViewPage extends StatefulWidget {
  @override
  State<WebViewPage> createState() => _WebViewPageState();
}

class _WebViewPageState extends State<WebViewPage> {
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();
  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) {
      WebView.platform = SurfaceAndroidWebView();
    }
  }

  String url =
      'https://www.facebook.com/Al-Helal-Kari-Hotel-Restaurant-1013275802089694/';
  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: url,
      onWebViewCreated: (WebViewController webViewController) {
        _controller.complete(webViewController);
      },
    );
  }
}

class RadhuniWebView extends StatefulWidget {
  @override
  State<RadhuniWebView> createState() => _RadhuniWebViewState();
}

class _RadhuniWebViewState extends State<RadhuniWebView> {
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();
  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) {
      WebView.platform = SurfaceAndroidWebView();
    }
  }

  String url =
      'https://www.facebook.com/%E0%A6%B0%E0%A6%BE%E0%A6%A7%E0%A7%81%E0%A6%A8%E0%A7%80-%E0%A6%B9%E0%A7%8B%E0%A6%9F%E0%A7%87%E0%A6%B2-%E0%A6%8F%E0%A6%A8%E0%A7%8D%E0%A6%A1-%E0%A6%B0%E0%A7%87%E0%A6%B8%E0%A7%8D%E0%A6%9F%E0%A7%81%E0%A6%B0%E0%A7%87%E0%A6%A8%E0%A7%8D%E0%A6%9F-Radhuni-hotel-restaurant-111537973901408/';
  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: url,
      onWebViewCreated: (WebViewController webViewController) {
        _controller.complete(webViewController);
      },
    );
  }
}

class GreenWebView extends StatefulWidget {
  @override
  _GreenWebViewState createState() => _GreenWebViewState();
}

class _GreenWebViewState extends State<GreenWebView> {
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();
  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) {
      WebView.platform = SurfaceAndroidWebView();
    }
  }

  String url = 'https://www.facebook.com/greenchillirrestaurant/';
  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: url,
      onWebViewCreated: (WebViewController webViewController) {
        _controller.complete(webViewController);
      },
    );
  }
}

class NoumiWebView extends StatefulWidget {
  @override
  _NoumiWebViewState createState() => _NoumiWebViewState();
}

class _NoumiWebViewState extends State<NoumiWebView> {
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();
  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) {
      WebView.platform = SurfaceAndroidWebView();
    }
  }

  String url = 'https://www.facebook.com/hotelnoumi';
  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: url,
      onWebViewCreated: (WebViewController webViewController) {
        _controller.complete(webViewController);
      },
    );
  }
}

class NobabiWebView extends StatefulWidget {
  @override
  _NobabiWebViewState createState() => _NobabiWebViewState();
}

class _NobabiWebViewState extends State<NobabiWebView> {
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();
  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) {
      WebView.platform = SurfaceAndroidWebView();
    }
  }

  String url = 'facebook.com/cafe.nobabi/';
  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: url,
      onWebViewCreated: (WebViewController webViewController) {
        _controller.complete(webViewController);
      },
    );
  }
}

class HungryWebView extends StatefulWidget {
  @override
  _HungryWebViewState createState() => _HungryWebViewState();
}

class _HungryWebViewState extends State<HungryWebView> {
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();
  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) {
      WebView.platform = SurfaceAndroidWebView();
    }
  }

  String url = 'https://www.facebook.com/hungry1restaurant/';
  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: url,
      onWebViewCreated: (WebViewController webViewController) {
        _controller.complete(webViewController);
      },
    );
  }
}

class SilverWebView extends StatefulWidget {
  @override
  _SilverWebViewState createState() => _SilverWebViewState();
}

class _SilverWebViewState extends State<SilverWebView> {
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();
  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) {
      WebView.platform = SurfaceAndroidWebView();
    }
  }

  String url = 'https://www.facebook.com/SilverForkChineseRestaurant/';
  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: url,
      onWebViewCreated: (WebViewController webViewController) {
        _controller.complete(webViewController);
      },
    );
  }
}

class DhakaWebView extends StatefulWidget {
  @override
  _DhakaWebViewState createState() => _DhakaWebViewState();
}

class _DhakaWebViewState extends State<DhakaWebView> {
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();
  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) {
      WebView.platform = SurfaceAndroidWebView();
    }
  }

  String url =
      'https://www.facebook.com/Dhaka-Food-Chinese-Thai-Restaurant-103579294557087/';
  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: url,
      onWebViewCreated: (WebViewController webViewController) {
        _controller.complete(webViewController);
      },
    );
  }
}

class HelloWebView extends StatefulWidget {
  @override
  _HelloWebViewState createState() => _HelloWebViewState();
}

class _HelloWebViewState extends State<HelloWebView> {
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();
  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) {
      WebView.platform = SurfaceAndroidWebView();
    }
  }

  String url = 'https://www.facebook.com/2007hello/';
  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: url,
      onWebViewCreated: (WebViewController webViewController) {
        _controller.complete(webViewController);
      },
    );
  }
}

class FregoWebView extends StatefulWidget {
  @override
  _FregoWebViewState createState() => _FregoWebViewState();
}

class _FregoWebViewState extends State<FregoWebView> {
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();
  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) {
      WebView.platform = SurfaceAndroidWebView();
    }
  }

  String url = 'https://www.facebook.com/FregoCafe/';
  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: url,
      onWebViewCreated: (WebViewController webViewController) {
        _controller.complete(webViewController);
      },
    );
  }
}

class FoodWebView extends StatefulWidget {
  @override
  _FoodWebViewState createState() => _FoodWebViewState();
}

class _FoodWebViewState extends State<FoodWebView> {
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();
  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) {
      WebView.platform = SurfaceAndroidWebView();
    }
  }

  String url = 'https://www.facebook.com/2007hello/';
  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: url,
      onWebViewCreated: (WebViewController webViewController) {
        _controller.complete(webViewController);
      },
    );
  }
}
