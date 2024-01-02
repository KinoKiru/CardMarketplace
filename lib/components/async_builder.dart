import 'package:card_marketplace/pages/loading.dart';
import 'package:flutter/material.dart';
import 'package:card_marketplace/pages/error.dart';

/// SimpleAsyncBuilder
/// Used when data needs to be awaited but not checked.
class SimpleAsyncBuilder<T> extends StatefulWidget {
  const SimpleAsyncBuilder(
      {super.key, required this.future, required this.onLoad});
  final Future<T>? future;
  final Function(T data, BuildContext context) onLoad;

  @override
  State<SimpleAsyncBuilder<T>> createState() => _SimpleAsyncBuilderState<T>();
}

class _SimpleAsyncBuilderState<T> extends State<SimpleAsyncBuilder<T>> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<T>(
      future: widget.future,
      builder: ((BuildContext context, AsyncSnapshot<T> snapshot) {
        if (snapshot.hasData) {
          return widget.onLoad(snapshot.requireData, context);
        } else if (snapshot.hasError) {
          return ErrorPage(error: '${snapshot.error}');
        } else {
          return const Loading();
        }
      }),
    );
  }
}
