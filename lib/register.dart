import 'package:flutter/material.dart';
import 'package:flutter_application_1/greet.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<RegisterScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isSwitched = false;
  var _value;
  var group;
  late String value;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                        color: Color(0xff2FC4B2),
                        width: 80,
                        height: 80,
                        alignment: Alignment.center,
                        child: Text(
                          'CRUX FLUTTER SUMMER GROUP',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 20),
                        ))
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      'ID Number',
                      style: TextStyle(fontSize: 17),
                    )),
                Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(color: Colors.grey[300]),
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      labelText: 'Please enter your ID Number',
                    ),
                    onChanged: (text) {
                      value = text;
                    },
                  ),
                ),
                Container(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      'Password',
                      style: TextStyle(fontSize: 17),
                    )),
                Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(color: Colors.grey[300]),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: InputDecoration(
                      labelText: 'Please enter your password',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    'Batch',
                    style: TextStyle(fontSize: 17),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(color: Colors.grey[300]),
                  child: DropdownButton(
                    value: _value,
                    items: [
                      DropdownMenuItem(
                        child: Text("2020"),
                        value: 1,
                      ),
                      DropdownMenuItem(
                        child: Text("2019"),
                        value: 2,
                      ),
                      DropdownMenuItem(
                        child: Text("2018"),
                        value: 3,
                      ),
                      DropdownMenuItem(
                        child: Text("2017"),
                        value: 4,
                      ),
                    ],
                    onChanged: (value) {
                      setState(() {
                        _value = value;
                      });
                    },
                    hint: Text("Select item"),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    Container(
                        padding: EdgeInsets.only(left: 5),
                        child: Text(
                          'Receive regular updates',
                          style: TextStyle(fontSize: 17),
                        )),
                    SizedBox(
                      width: 150,
                    ),
                    Container(
                      child: Switch(
                        value: isSwitched,
                        onChanged: (value) {
                          setState(() {
                            isSwitched = value;
                            // print(isSwitched);
                          });
                        },
                        inactiveTrackColor: Colors.grey,
                        activeTrackColor: Color(0xff2FC4B2),
                        activeColor: Color(0xff2FC4B2),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 35,
                ),
                Container(
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      'Are you excited for this!!',
                      style: TextStyle(fontSize: 18),
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Radio(
                      value: 1,
                      groupValue: group,
                      onChanged: (k) {
                        print(k);
                        setState(() {
                          group = k;
                        });
                      },
                      activeColor: Color(0xff2FC4B2),
                    ),
                    Container(
                      child: Text(
                        'Yes',
                        style: TextStyle(
                            fontSize: 18, fontStyle: FontStyle.italic),
                      ),
                    ),
                    SizedBox(
                      width: 120,
                    ),
                    Radio(
                      value: 3,
                      groupValue: group,
                      onChanged: (k) {
                        print(k);
                        setState(() {
                          group = k;
                        });
                      },
                      activeColor: Color(0xff2FC4B2),
                    ),
                    Container(
                      child: Text(
                        'No',
                        style: TextStyle(
                            fontSize: 18, fontStyle: FontStyle.italic),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 50,
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: ElevatedButton(
                    child: Text('REGISTER'),
                    style: ElevatedButton.styleFrom(
                        onPrimary: Colors.white, primary: Color(0xff2FC4B2)),
                    onPressed: () {
                      print(nameController.text);
                      print(passwordController.text);
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                            builder: (context) => GreetScreen(value: value),
                          ));
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                    child: Row(
                  children: <Widget>[
                    Text(
                      'Already have an account?',
                      style: TextStyle(fontSize: 15),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Login',
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
