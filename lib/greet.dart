import 'package:flutter/material.dart';

class GreetScreen extends StatefulWidget {
  late String value;
  GreetScreen({required this.value});
  @override
  _State createState() => _State(value);
}

class _State extends State<GreetScreen> {
  TextEditingController name = TextEditingController();
  TextEditingController password = TextEditingController();
  String idno;
  _State(this.idno);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.fromLTRB(25, 110, 25, 85),
                    child: Text(
                      'CRUX FLUTTER SUMMER GROUP',
                      style: TextStyle(
                          color: Color(0xff2FC4B2),
                          fontWeight: FontWeight.w800,
                          fontSize: 45),
                    )),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.fromLTRB(25, 65, 25, 85),
                    child: Text(
                      'welcomes you',
                      style: TextStyle(fontSize: 25),
                    )),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      idno,
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 40),
                    )),
                SizedBox(
                  height: 25,
                ),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      'Have a great journey ahead !!',
                      style:
                          TextStyle(fontSize: 25, fontStyle: FontStyle.italic),
                    )),
                SizedBox(
                  height: 35,
                ),
              ],
            )));
  }
}
