import 'package:flutter/material.dart';
import 'package:loginscreen/service/Custompaint.dart';

import 'package:loginscreen/view_model/provider.dart';
import 'package:loginscreen/view/LoginScreen.dart';
import 'package:provider/provider.dart';
import '../model/medicine_model.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:intl/intl.dart';


class Screen3 extends StatefulWidget {
  const Screen3({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  String greeting = '';
   Future<MedicineModel>? fetchdata;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
    fetchdata = context.read<ProvidersClass>().Apionprovider;
    });
  }

  @override
  Widget build(BuildContext context) {
    final usersname = Provider.of<ProvidersClass>(context).usernameonprovider;
    DateTime now = DateTime.now();
    final currenttime = int.parse(DateFormat('kk').format(now));
    if (currenttime <= 12) {
      greeting = 'GoodMorning';
    } else if ((currenttime > 12) && (currenttime <= 16)) {
      greeting = 'GoodAfterNoon';
    } else if ((currenttime > 16) && (currenttime <= 20)) {
      greeting = 'GoodEvening';
    } else {
      greeting = 'GoodNight';
    }
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: FutureBuilder<MedicineModel>(
            future:context.read<ProvidersClass>().Apionprovider,
            builder: (context, snapshot) {
              if(snapshot.hasData){
                 return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(alignment: AlignmentDirectional.topEnd, children: [
                    Container(
                        child: CustomPaint(
                          size: MediaQuery.of(context)
                              .size, //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                          painter: RPSCustomPainter(),
                        ),
                        color: Colors.white,
                        width: MediaQuery.of(context).size.width,
                        height: 150),
                    IconButton(
                        onPressed: () {
                          // fetchdatafromApi();
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      LoginScreen(title: 'null')));
                          RemoveData();
                        },
                        icon: Padding(
                          padding: const EdgeInsets.only(top: 8.0, right: 17),
                          child: Icon(Icons.logout, color: Colors.brown),
                        ))
                  ]),
                  Padding(
                    padding: const EdgeInsets.only(right: 40.0, bottom: 30),
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height / 8,
                      width: MediaQuery.of(context).size.width,
                      child: Center(
                        child: Text(
                          '${greeting + '\n' + context.read<ProvidersClass>().username}',
                          style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontFamily: 'Poppins',
                              fontSize: 28,
                              color: Colors.brown),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 25, right: 25, top: 35, bottom: 15),
                    child: Text(
                      snapshot.data!.problems![0].diabetes![0].medications![0].medicationsClasses![0].className![0].associatedDrug![0].name??"",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                    ),
                  ),
                ],
              );
              }
              if(snapshot.hasError){
                return Text(snapshot.error.toString());
              }
              else{
                return CircularProgressIndicator();
              }
              // final name=snapshot.data!.problems![0].diabetes![0].medications![0].medicationsClasses![0].className![0].associatedDrug![0].name;
            },
          )),
    );
  }
}

void RemoveData() async {
  final prefs = await SharedPreferences.getInstance();
  prefs.remove('username');
}
