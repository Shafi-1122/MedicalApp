import 'package:flutter/cupertino.dart';

class ProvidersClass extends ChangeNotifier {
  String Username1='John';
 
  String Password1='Password';
 
  String usernameonprovider = '';
  void storeusername(controller) {
    usernameonprovider = controller;
    notifyListeners();
  }
}
