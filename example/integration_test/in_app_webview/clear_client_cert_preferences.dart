import 'package:flutter/foundation.dart';
import 'package:flutter_inappwebview_fix_iostouchdelay/flutter_inappwebview_fix_iostouchdelay.dart';
import 'package:flutter_test/flutter_test.dart';

void clearClientCertPreferences() {
  final shouldSkip = kIsWeb
      ? true
      : ![
          TargetPlatform.android,
        ].contains(defaultTargetPlatform);

  test('clearClientCertPreferences', () async {
    await expectLater(
        InAppWebViewController.clearClientCertPreferences(), completes);
  }, skip: shouldSkip);
}
