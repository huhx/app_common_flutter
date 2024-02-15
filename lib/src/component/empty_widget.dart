import 'package:flutter/material.dart';

class EmptyWidget extends StatelessWidget {
  final String? message;

  const EmptyWidget({super.key, this.message});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(message ?? "没有找到相关的内容"),
    );
  }
}
