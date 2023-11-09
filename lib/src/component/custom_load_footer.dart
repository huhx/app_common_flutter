import 'package:app_common_flutter/src/common/constant/comm_constant.dart';
import 'package:app_common_flutter/src/common/constant/icon_constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import 'svg_icon.dart';

class CustomLoadFooter extends StatelessWidget {
  const CustomLoadFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return const ClassicFooter(
      loadingIcon: SizedBox(
        width: 25.0,
        height: 25.0,
        child: CupertinoActivityIndicator(),
      ),
      loadStyle: LoadStyle.ShowWhenLoading,
      canLoadingIcon: CupertinoActivityIndicator(),
      noDataText: "已展示全部数据",
      spacing: 8,
      noMoreIcon: SvgIcon(
        name: CommIconName.smile,
        size: 18,
        package: Comm.package,
      ),
    );
  }
}
