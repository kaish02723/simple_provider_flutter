import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_flutter/change_notifier_page.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Provider"),
      ),
      body: ChangeNotifierProvider(create: (context) => ChageProviderController(),builder: (context, child) {
        var _provider=context.watch<ChageProviderController>();
        return Column(
          children: [
            Text(_provider.message),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: () {
             _provider.updateText();
            }, child: Text("Refresh")),
            ElevatedButton(onPressed: () {
              _provider.updateMultipleText();
            }, child: Text("Refresh"))
          ],
        );
      },)
    );
  }
}
