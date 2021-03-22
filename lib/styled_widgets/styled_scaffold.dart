import 'package:flutter/material.dart';

class StyledScaffold extends StatelessWidget {
  final Widget? body;
  final PreferredSizeWidget? appBar;

  const StyledScaffold({Key? key, this.body, this.appBar}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: WidgetsBinding.instance!.focusManager.primaryFocus?.unfocus,
      child: Scaffold(
        appBar: appBar,
        body: body,
      ),
    );
  }
}
