import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_flutter/change_notifier_page.dart';

import 'multiple_provider_page.dart';
import 'my_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider<ChageProviderController>(create: (context) => ChageProviderController(),)
    ],child: const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MultipleProviderPage(),
    ),);
  }
}


