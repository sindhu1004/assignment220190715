import 'package:flutter/material.dart';
import 'package:flutter_application_1/greet.dart';
import 'package:flutter_application_1/register.dart';

class LoginScreen extends StatefulWidget {
  @override
  _State createState() {
    return _State();
  }
}

class _State extends State<LoginScreen> {
  TextEditingController name = TextEditingController();
  TextEditingController password = TextEditingController();

  late String idno;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.all(15),
            child: ListView(
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.fromLTRB(25, 110, 25, 85),
                    child: Text(
                      'CRUX FLUTTER SUMMER GROUP',
                      style: TextStyle(
                          color: Color(0xff2FC4B2),
                          fontWeight: FontWeight.w900,
                          fontSize: 35),
                    )),
                Container(
                  padding: EdgeInsets.fromLTRB(15, 5, 0, 0),
                  child: Text(
                    'ID Number',
                    style: TextStyle(fontSize: 17),
                    strutStyle: StrutStyle(fontStyle: FontStyle.italic),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(15),
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(color: Colors.grey[100]),
                  child: TextField(
                    controller: name,
                    decoration: InputDecoration(
                      labelText: 'Please enter your ID Number',
                    ),
                    onChanged: (text) {
                      idno = text;
                    },
                  ),
                ),
                Container(
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      'Password',
                      style: TextStyle(fontSize: 17),
                    )),
                Container(
                  margin: EdgeInsets.all(15),
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(color: Colors.grey[100]),
                  child: TextField(
                    obscureText: true,
                    controller: password,
                    decoration: InputDecoration(
                      labelText: 'Please enter your password',
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                    //height: 50,
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: ElevatedButton(
                      child: Text(
                        'LOG IN',
                        style: TextStyle(fontSize: 15),
                      ),
                      style: ElevatedButton.styleFrom(
                          onPrimary: Colors.white, primary: Color(0xff2FC4B2)),
                      onPressed: () {
                        print(name.text);
                        print(password.text);
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                              builder: (context) => GreetScreen(value: idno),
                            ));
                      },
                    )),
                SizedBox(
                  height: 15,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Forgot Password ?',
                    style: TextStyle(
                      color: Colors.lightGreen,
                      fontSize: 15,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                    child: Row(
                  children: <Widget>[
                    Text(
                      'Do not have account?',
                      style: TextStyle(fontSize: 15),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => RegisterScreen()));
                      },
                      child: Text(
                        'Register',
                      ),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.white, onPrimary: Color(0xff2FC4B2)),
                    )
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                ))
              ],
            )));
  }
}
