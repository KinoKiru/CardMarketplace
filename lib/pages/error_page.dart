import 'package:flutter/material.dart';

class ErrorPage extends StatefulWidget {
  final String error;
  const ErrorPage({super.key, required this.error});

  @override
  State<ErrorPage> createState() => _ErrorPageState();
}

//TODO page or component?
class _ErrorPageState extends State<ErrorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Error'),
      ),
      body: Center(
        child: Text(widget.error),
      ),
    );
  }
}
