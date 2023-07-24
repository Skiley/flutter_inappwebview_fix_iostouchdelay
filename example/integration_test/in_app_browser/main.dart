import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_inappwebview_fix_iostouchdelay/flutter_inappwebview_fix_iostouchdelay.dart';
import 'package:flutter_test/flutter_test.dart';

import '../constants.dart';
import '../util.dart';

part 'custom_menu_items.dart';
part 'hide_and_show.dart';
part 'open_data_and_close.dart';
part 'open_file_and_close.dart';
part 'open_url_and_close.dart';
part 'set_get_settings.dart';

void main() {
  final shouldSkip = kIsWeb;

  skippableGroup('InAppBrowser', () {
    openUrlAndClose();
    openFileAndClose();
    openDataAndClose();
    setGetSettings();
    hideAndShow();
    customMenuItems();
  }, skip: shouldSkip);
}
