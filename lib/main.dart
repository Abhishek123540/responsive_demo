import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'screens/first_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      builder: (context, child) => ResponsiveWrapper.builder(
        BouncingScrollWrapper.builder(context, child!),
        breakpoints: [
          const ResponsiveBreakpoint.resize(240, name: MOBILE),
          const ResponsiveBreakpoint.autoScale(650, name: TABLET),
          const ResponsiveBreakpoint.autoScale(900, name: TABLET),
          const ResponsiveBreakpoint.resize(1000, name: DESKTOP),
          const ResponsiveBreakpoint.resize(2468, name: '4k'),
        ],
      ),
      home: const FirstScreen(),
    );
  }
}
