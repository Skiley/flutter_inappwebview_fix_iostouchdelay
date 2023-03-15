import 'package:flutter/foundation.dart';
import 'package:flutter_inappwebview_fix_iostouchdelay/flutter_inappwebview_fix_iostouchdelay.dart';
import 'package:flutter_test/flutter_test.dart';

void getCurrentWebViewPackage() {
  final shouldSkip = kIsWeb
      ? true
      : ![
          TargetPlatform.android,
        ].contains(defaultTargetPlatform);

  test('getCurrentWebViewPackage', () async {
    expect(await InAppWebViewController.getCurrentWebViewPackage(), isNotNull);
  }, skip: shouldSkip);
}
