import 'package:app_common_flutter/src/common/constant/comm_constant.dart';
import 'package:app_common_flutter/src/common/constant/icon_constant.dart';
import 'package:flutter/material.dart';

import 'svg_icon.dart';

class ListTileTrailing extends StatelessWidget {
  const ListTileTrailing({super.key});

  @override
  Widget build(BuildContext context) {
    return const IconTheme(
      data: IconThemeData(color: Colors.grey),
      child: SvgIcon(name: CommIconName.right, size: 14, package: Comm.package),
    );
  }
}
