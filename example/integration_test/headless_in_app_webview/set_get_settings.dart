import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_inappwebview_fix_iostouchdelay/flutter_inappwebview_fix_iostouchdelay.dart';
import 'package:flutter_test/flutter_test.dart';

import '../constants.dart';

void setGetSettings() {
  final shouldSkip = kIsWeb
      ? false
      : ![
          TargetPlatform.android,
          TargetPlatform.iOS,
          TargetPlatform.macOS,
        ].contains(defaultTargetPlatform);

  test('set/get settings', () async {
    final Completer<InAppWebViewController> controllerCompleter =
        Completer<InAppWebViewController>();
    final Completer<void> pageLoaded = Completer<void>();

    var headlessWebView = new HeadlessInAppWebView(
      initialUrlRequest: URLRequest(url: TEST_CROSS_PLATFORM_URL_1),
      initialSettings: InAppWebViewSettings(javaScriptEnabled: false),
      onWebViewCreated: (controller) {
        controllerCompleter.complete(controller);
      },
      onLoadStop: (controller, url) async {
        pageLoaded.complete();
      },
    );

    await headlessWebView.run();
    final InAppWebViewController controller = await controllerCompleter.future;
    await pageLoaded.future;

    var settings = await controller.getSettings();
    expect(settings, isNotNull);
    expect(settings!.javaScriptEnabled, false);

    await controller.setSettings(
        settings: InAppWebViewSettings(javaScriptEnabled: true));

    settings = await controller.getSettings();
    expect(settings, isNotNull);
    expect(settings!.javaScriptEnabled, true);
  }, skip: shouldSkip);
}
