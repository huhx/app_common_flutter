import 'package:flutter/widgets.dart';

import 'stream_list.dart';

abstract class StreamState<T extends StatefulWidget, U> extends State<T> {
  final StreamList<U> streamList = StreamList();

  @override
  void initState() {
    super.initState();
    streamList.addRequestListener((pageKey) => fetchPage(pageKey));
  }

  @protected
  Future<void> fetchPage(int pageKey);

  @override
  void dispose() {
    streamList.dispose();
    super.dispose();
  }
}
