import 'dart:convert';

import 'package:http/http.dart';

import 'package:http/http.dart'as http;
import 'package:loginscreen/model/medicine_model.dart';
import 'dart:convert' as convert;
class Apiclass{
Future<MedicineModel> fetchdatafromApi()async{

  final response=await http.get(Uri.parse('https://run.mocky.io/v3/212d5579-f679-4fbe-9084-2a2e7845cce8'));
  Map<String,dynamic> listofdatafromapi=convert.jsonDecode(response.body);
//  print(decodeddata);
//  print(listofdatafromapi['problems']);
final details=MedicineModel.fromJson(listofdatafromapi);
// print(details.problems![0].diabetes![0].medications![0].medicationsClasses![0].className![0].associatedDrug![0].name);
return details;
}
}