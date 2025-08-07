import 'package:flutter/cupertino.dart';

class ChageProviderController with ChangeNotifier{
  var message="Hello";
updateText(){
  message="Page refrensh";
  notifyListeners();
}
  updateMultipleText(){
    message="I Im student at Edugaon";
    notifyListeners();
  }
}