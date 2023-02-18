import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgIcon extends StatelessWidget {
  final String name;
  final String? package;
  final Color? color;
  final double size;

  const SvgIcon({
    super.key,
    required this.name,
    this.package,
    this.color,
    this.size = 24,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      "assets/svg/$name.svg",
      package: package,
      colorFilter:
          color == null ? null : ColorFilter.mode(color!, BlendMode.srcIn),
      height: size,
      width: size,
    );
  }
}
