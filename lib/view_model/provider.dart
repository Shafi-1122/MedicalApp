import 'package:flutter/cupertino.dart';
import 'package:loginscreen/service/apis.dart';

import '../model/medicine_model.dart';

class ProvidersClass extends ChangeNotifier {
  String username='John';
  String password='Password';
  Apiclass apiclassobj=Apiclass();
 // ignore: non_constant_identifier_names
 late Future<MedicineModel>? Apionprovider=apiclassobj.fetchdatafromApi();
  String usernameonprovider = '';
  void storeusername(controller) {
    usernameonprovider = controller;
    notifyListeners();
  }
}
