import 'dart:js';

import 'package:flutter/material.dart';
import 'package:the_basics/locator.dart';
import 'package:the_basics/routing/route_names.dart';
import 'package:the_basics/routing/router.dart';
import 'package:the_basics/views/layout_template/layout_template.dart';
import 'package:the_basics/services/navigation_service.dart';

//responsive ui tutorial part 2 
//https://medium.com/flutter-community/easy-responsive-ui-in-flutter-web-flutter-web-series-part-2-ace93f49a512

void main() { 
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: Theme.of(context).textTheme.apply(fontFamily: 'Open Sans'),
      ),
      home: LayoutTemplate(),
      builder: (context, child) => LayoutTemplate(
        child: child,
      ),
      navigatorKey: locator<NavigationService>().navigatorKey,
      onGenerateRoute: generateRoute,
      initialRoute: HomeRoute,
    );
  }
}
