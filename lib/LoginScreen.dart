// ignore_for_file: unused_element, prefer_const_constructors, non_constant_identifier_names, avoid_print

import 'package:flutter/material.dart';
import 'package:loginscreen/apis.dart';
import 'package:loginscreen/provider.dart';
import 'package:provider/provider.dart';
import 'HomeScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:avoid_keyboard/avoid_keyboard.dart';
class Screen2 extends StatefulWidget {
  const Screen2({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  Future<void> getData() async {
    final prefs = await SharedPreferences.getInstance();
    final username = prefs.getString('username');
    final password = prefs.getString('password');
    if (username != null) {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => Screen3(
                    title: "null",
                  )));
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    final mycontroller = TextEditingController();
    final mycontroller1 = TextEditingController();

    late String password;
    late String username;
    Future<void> StoreUsername() async {
      final prefs = await SharedPreferences.getInstance();
      // print(username);
      prefs.setString('username', mycontroller.text);
    }

    Future<void> StorePassword() async {
      final prefs = await SharedPreferences.getInstance();
      // print(password);
      prefs.setString('password', mycontroller1.text);
    }

    return Scaffold(
    //  resizeToAvoidBottomInset: true,
      // backgroundColor: Colors.orange,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SafeArea(
          child: SingleChildScrollView(
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              width:MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 18.0, left: 8, right: 8),
                        child: Text(
                          "Log in",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold
                              ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 18.0, left: 8, right: 8),
                        child: Text(
                          "Sign up",
                          style: TextStyle(color: Colors.black),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 90.0),
                    child: Text(
                      ' Welcome ! ',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        color: Colors.brown,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                  Spacer(),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 2,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            controller: mycontroller,
                            decoration: const InputDecoration(
                              hintText: "Username",
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            controller: mycontroller1,
                            obscureText: true,
                            decoration: const InputDecoration(
                              hintText: "Password",
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 50.0, left: 15, right: 15),
                          child: Row(
                            children: [
                              Text(
                                "Forgot Password",
                                style: TextStyle(
                                    color: Colors.black,
                                    textBaseline: TextBaseline.alphabetic),
                              ),
                              Spacer(),
                              Container(
                                decoration: BoxDecoration(   borderRadius: BorderRadius.circular(13),),
                                
                                height: 50,
                                width: 70,
                                child: ElevatedButton(
                                    style: ButtonStyle(
                                      backgroundColor: MaterialStateProperty.all(
                                          Color.fromARGB(255, 250, 218, 37)),
                                    ),
                                    onPressed: () {
                                      if (mycontroller.text ==
                                              context
                                                  .read<ProvidersClass>()
                                                  .Username1 &&
                                          mycontroller1.text ==
                                              context
                                                  .read<ProvidersClass>()
                                                  .Password1) {
                                        // fetchdatafromapi();
                                        StoreUsername();
                
                                        mycontroller.clear();
                                        mycontroller1.clear();
                                        Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => Screen3(
                                                      title: "null",
                                                    )));
                                      } else {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(SnackBar(
                                          content: Text(
                                              "Username and Password doesnot match"),
                                          margin: EdgeInsets.only(bottom:20,left: 20,right: 20),
                                          behavior: SnackBarBehavior.floating,
                                          backgroundColor: Colors.red,
                                        ));
                                      }
                                    },
                                    child: Icon(
                                      Icons.arrow_forward,
                                      color: Colors.brown,
                                    )),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
