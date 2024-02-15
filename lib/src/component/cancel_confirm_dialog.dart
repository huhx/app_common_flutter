import 'package:flutter/material.dart';

class CancelConfirmDialog extends StatelessWidget {
  final String title;
  final String content;
  final VoidCallback callback;

  const CancelConfirmDialog({
    required this.title,
    required this.content,
    required this.callback,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog.adaptive(
      title: Text(title),
      actionsOverflowButtonSpacing: 20,
      content: Text(content),
      actions: [
        TextButton(
          child: const Text("取消", style: TextStyle(color: Colors.red)),
          onPressed: () => Navigator.pop(context),
        ),
        TextButton(
          child: const Text("确定", style: TextStyle(color: Colors.green)),
          onPressed: () {
            Navigator.pop(context);
            callback();
          },
        ),
      ],
    );
  }
}
