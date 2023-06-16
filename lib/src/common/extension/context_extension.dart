import 'package:app_common_flutter/src/component/cancel_confirm_dialog.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

extension ContextExtension on BuildContext {
  bool get isDarkMode {
    return MediaQuery.of(this).platformBrightness == Brightness.dark;
  }

  bool get isLightMode {
    return MediaQuery.of(this).platformBrightness == Brightness.light;
  }

  ColorScheme get colorScheme {
    return Theme.of(this).colorScheme;
  }

  TextTheme get textTheme {
    return Theme.of(this).textTheme;
  }

  void closeKeyboard() {
    final FocusScopeNode focusScopeNode = FocusScope.of(this);
    if (!focusScopeNode.hasPrimaryFocus) {
      focusScopeNode.unfocus();
    }
  }

  Future<void> share({
    required String title,
    required String subject,
  }) async {
    final RenderBox? box = findRenderObject() as RenderBox?;

    await Share.share(
      title,
      subject: subject,
      sharePositionOrigin: box!.localToGlobal(Offset.zero) & box.size,
    );
  }

  void showCommDialog({
    required VoidCallback callback,
    title = '删除',
    content = '确定要删除?',
  }) {
    showDialog(
      context: this,
      builder: (_) => CancelConfirmDialog(
        title: title,
        content: content,
        callback: callback,
      ),
    );
  }

  bool isMobile() {
    return MediaQuery.of(this).size.width < 600;
  }

  bool isTablet() {
    final double width = MediaQuery.of(this).size.width;
    return width < 1000 && width >= 600;
  }

  bool isDesktop() {
    return MediaQuery.of(this).size.width >= 1000;
  }
}
