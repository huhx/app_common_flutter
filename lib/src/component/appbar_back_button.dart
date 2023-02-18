import 'package:app_common_flutter/src/common/constant/comm_constant.dart';
import 'package:app_common_flutter/src/common/constant/icon_constant.dart';
import 'package:flutter/material.dart';

import 'svg_icon.dart';

class AppbarBackButton extends StatelessWidget {
  final VoidCallback? callback;

  const AppbarBackButton({super.key, this.callback});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const SvgIcon(name: IconName.back, size: 18, package: Comm.package),
      onPressed: callback ?? () => Navigator.pop(context),
    );
  }
}
