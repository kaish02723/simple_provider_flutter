import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_flutter/change_notifier_page.dart';

class MultipleProviderPage extends StatelessWidget {
  const MultipleProviderPage({super.key});

  @override
  Widget build(BuildContext context) {
    var _provider=Provider.of<ChageProviderController>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Multiple Provider"),
      ),
      body: Column(
        children: [
          Consumer<ChageProviderController>(builder: (context, value, child) {
            return Text("${value.message}");
          },),
          ElevatedButton(onPressed: () {
            _provider.updateText();
          }, child: const Text("Refresh1")),
          ElevatedButton(onPressed: () {
            _provider.updateMultipleText();
          }, child: const Text("Refresh2"))
        ],
      ),
    );
  }
}
