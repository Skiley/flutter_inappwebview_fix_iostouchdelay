import 'package:flutter/foundation.dart';
import 'package:flutter_inappwebview_fix_iostouchdelay/flutter_inappwebview_fix_iostouchdelay.dart';
import 'package:flutter_test/flutter_test.dart';

void setWebContentsDebuggingEnabled() {
  final shouldSkip = kIsWeb
      ? true
      : ![
          TargetPlatform.android,
        ].contains(defaultTargetPlatform);

  test('setWebContentsDebuggingEnabled', () async {
    expect(
        InAppWebViewController.setWebContentsDebuggingEnabled(true), completes);
  }, skip: shouldSkip);
}
