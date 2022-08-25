import 'package:flutter/material.dart';
import 'package:loginscreen/LoginScreen.dart';
import 'package:loginscreen/apis.dart';
import 'package:loginscreen/provider.dart';
import 'package:provider/provider.dart';
import 'Splashscreen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:intl/intl.dart';
import 'Custompaint.dart';
class Screen3 extends StatefulWidget {
  const Screen3({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  String greeting = '';

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
          body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,            children: [
              Stack(
                alignment: AlignmentDirectional.topEnd,
                children:[ Container(
                        child: CustomPaint(
                          size: MediaQuery.of(context)
                              .size, //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                          painter: RPSCustomPainter(),
                        ),
                        color: Colors.white,
                        width: MediaQuery.of(context).size.width,
                        height: 150), IconButton(
                  onPressed: () {
                    // fetchdatafromapi();
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Screen2(title: 'null')));
                    RemoveData();
                  },
                  icon: Padding(
                    padding: const EdgeInsets.only(top:8.0,right: 17),
                    child: Icon(
                      Icons.logout,
                      color: Colors.brown
                    ),
                  ))]
              ),
          
              Padding(
                padding: const EdgeInsets.only(right:40.0,bottom: 30),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height / 8,
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                    child: Text(
                      '${greeting + '\n' +context.read<ProvidersClass>().Username1}',
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
                padding: const EdgeInsets.only(left:25,right: 25,top: 35,bottom: 15),
                child: Text('"You need to take dash dose of dash tablet on a strenght of dash for your diabates"',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18),),
              ),
            
               
            ],
          )),
    );
  }
}

void RemoveData() async {
  final prefs = await SharedPreferences.getInstance();
  prefs.remove('username');
}
