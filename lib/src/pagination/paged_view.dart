import 'package:app_common_flutter/src/component/center_progress_indicator.dart';
import 'package:app_common_flutter/src/component/empty_widget.dart';
import 'package:flutter/widgets.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import 'stream_list.dart';

typedef PagedViewBuilder<T> = BoxScrollView Function(
  BuildContext context,
  List<T> content,
);

class PagedView<T> extends StatelessWidget {
  final StreamList<T> streamList;
  final PagedViewBuilder<T> builder;
  final Widget? emptyWidget;

  const PagedView(
    this.streamList,
    this.builder, {
    this.emptyWidget,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: streamList.stream,
      builder: (context, snap) {
        if (!snap.hasData) return const CenterProgressIndicator();
        final List<T> content = snap.data as List<T>;

        if (content.isEmpty) {
          return emptyWidget ?? const EmptyWidget(message: "记录为空");
        }

        return SmartRefresher(
          controller: streamList.refreshController,
          onRefresh: streamList.onRefresh,
          onLoading: streamList.onLoading,
          enablePullUp: true,
          child: builder(context, content),
        );
      },
    );
  }
}
