import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_inappwebview_fix_iostouchdelay/flutter_inappwebview_fix_iostouchdelay.dart';
import 'package:flutter_test/flutter_test.dart';

import '../constants.dart';
import '../util.dart';

part 'convert_to_inappwebview.dart';
part 'custom_size.dart';
part 'run_and_dispose.dart';
part 'set_get_settings.dart';
part 'take_screenshot.dart';

void main() {
  skippableGroup('HeadlessInAppWebView', () {
    runAndDispose();
    takeScreenshot();
    customSize();
    setGetSettings();
    convertToInAppWebView();
  });
}
