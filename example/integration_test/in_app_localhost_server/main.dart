import 'package:flutter/foundation.dart';
import 'package:flutter_inappwebview_fix_iostouchdelay/flutter_inappwebview_fix_iostouchdelay.dart';
import 'package:flutter_test/flutter_test.dart';

import 'load_asset_file.dart';

void main() {
  final shouldSkip = kIsWeb;

  group('InAppLocalhostServer', () {
    final InAppLocalhostServer localhostServer = InAppLocalhostServer();

    setUpAll(() async {
      await localhostServer.start();
    });

    loadAssetFile(localhostServer);

    tearDownAll(() async {
      await localhostServer.close();
    });
  }, skip: shouldSkip);
}
