import 'package:app_common_flutter/src/common/constant/comm_constant.dart';
import 'package:app_common_flutter/src/common/constant/icon_constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import 'svg_icon.dart';

class CustomWaterDropHeader extends StatelessWidget {
  const CustomWaterDropHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final RefreshString refreshString = ChRefreshString();

    return WaterDropHeader(
      refresh: const SizedBox(
        width: 25.0,
        height: 25.0,
        child: CupertinoActivityIndicator(),
      ),
      complete: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const SvgIcon(
            name: CommIconName.refreshDone,
            color: Colors.grey,
            size: 17,
            package: Comm.package,
          ),
          const SizedBox(width: 10),
          Text(
            refreshString.refreshCompleteText!,
            style: const TextStyle(color: Colors.grey, fontSize: 13),
          )
        ],
      ),
    );
  }
}
