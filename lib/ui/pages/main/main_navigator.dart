import 'package:flutter/material.dart';
import 'package:flutter_application/ui/pages/home/add_transaction_page.dart';
import 'package:flutter_application/utils/navigator_support.dart';

import '../home/cul_transaction_arguments.dart';
import '../pages.dart';

class MainNavigator extends StatefulWidget {
  const MainNavigator({Key? key}) : super(key: key);

  @override
  _MainNavigatorState createState() => _MainNavigatorState();
}

class _MainNavigatorState extends State<MainNavigator> {
  @override
  Widget build(BuildContext context) {
    return NavigatorSupport(
      initialRoute: HomePage.path,
      onGenerateRoute: (setting) {
        switch (setting.name) {
          case HomePage.path:
            return MaterialPageRoute(builder: (context) => const HomePage());
          case AddTransactionPage.path:
            // CulTransactionArguments arguments = setting.arguments as CulTransactionArguments;
            return MaterialPageRoute(
                builder: (context) =>
                    AddTransactionPage(setting.arguments as String));
        }
        return null;
      },
    );
  }
}
