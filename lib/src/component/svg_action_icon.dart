import 'package:flutter/material.dart';

import 'svg_icon.dart';

class SvgActionIcon extends StatelessWidget {
  final String name;
  final String? package;
  final VoidCallback onPressed;

  const SvgActionIcon({
    super.key,
    required this.name,
    this.package,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: SvgIcon(name: name, color: Colors.white, package: package),
    );
  }
}
