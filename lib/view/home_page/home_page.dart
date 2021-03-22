import 'package:flutter/material.dart';
import 'package:message_gradient/routing/router.dart';
import '../../styled_widgets/styled_widgets.dart';
import '../../utils/utils.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StyledScaffold(
      body: Center(
        child: Container(
          constraints: BoxConstraints(minWidth: 200),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 4),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      width: 2,
                      color: context.theme.dividerColor,
                    ),
                  ),
                ),
                child: Text(
                  'Welcome.',
                  style: context.textTheme.headline3!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: context.colorScheme.onBackground),
                ),
              ),
              SizedBox(height: 8),
              Text(
                '\"Patience is a virtue\"',
                style: context.textTheme.headline6!
                    .copyWith(color: context.colorScheme.onBackground),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 64),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    padding:
                        EdgeInsets.symmetric(horizontal: 32, vertical: 20)),
                onPressed: () {
                  Routes.router.navigateTo(context, Routes.chatPage);
                },
                child: Text('Chat Page'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
