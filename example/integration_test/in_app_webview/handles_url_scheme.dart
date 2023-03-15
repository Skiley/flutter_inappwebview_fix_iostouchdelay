import 'package:flutter/foundation.dart';
import 'package:flutter_inappwebview_fix_iostouchdelay/flutter_inappwebview_fix_iostouchdelay.dart';
import 'package:flutter_test/flutter_test.dart';

void handlesURLScheme() {
  final shouldSkip = kIsWeb
      ? true
      : ![
          TargetPlatform.iOS,
          TargetPlatform.macOS,
        ].contains(defaultTargetPlatform);

  test('handlesURLScheme', () async {
    expect(await InAppWebViewController.handlesURLScheme("http"), true);
    expect(await InAppWebViewController.handlesURLScheme("https"), true);
  }, skip: shouldSkip);
}
