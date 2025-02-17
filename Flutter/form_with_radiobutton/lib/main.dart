import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Stateful app example",
    home: Scaffold(appBar: AppBar(title: Text("Simple Form")), body: SIform()),
  ));
}

class SIform extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SIformstate();
  }
}

enum genderGroup { Male, Female }

class _SIformstate extends State<SIform> {
  String displaytext = "";
  genderGroup gendergroup = genderGroup.Male;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          child: Padding(
        padding: EdgeInsets.all(10.0),
        child: ListView(
          children: [
            Padding(
                padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                child: TextField(
                  
                  decoration: InputDecoration(
                      errorStyle:
                          TextStyle(color: Colors.yellowAccent, fontSize: 15.0),
                      labelText: 'Enter your name',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0))),
                )),
            Padding(
                padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                child: TextField(
                  decoration: InputDecoration(
                      errorStyle:
                          TextStyle(color: Colors.yellowAccent, fontSize: 15.0),
                      fillColor: Colors.white,
                      labelText: 'Password',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0))),
                )),
            Padding(
                padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Row(
                      children: [
                          Radio(
                          value: genderGroup.Male,
                          groupValue: gendergroup,
                          onChanged: (genderGroup gender) {
                            setState(() {
                              gendergroup = gender;
                            });
                          },
                        ),
                        Text("Male", textScaleFactor: 1,),]
                      ),
                    ),
                    Expanded(
                      child: Row(
                      children: [
                          Radio(
                          value: genderGroup.Female,
                          groupValue: gendergroup,
                          onChanged: (genderGroup gender) {
                            setState(() {
                              gendergroup = gender;
                            });
                          },
                        ),
                        Text("Female", textScaleFactor: 1,),]
                      ),
                    )
                  ],
                )),
            Padding(
                padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                child: Row(
                  children: [
                    Expanded(
                      child: RaisedButton(
                        child: Text('Done', textScaleFactor: 1.5),
                        onPressed: () {
                          setState(() {
                            display();
                          });
                        },
                      ),
                    ),
                  ],
                )),
            Text(
              this.displaytext,
              textScaleFactor: 1.5,
            )
          ],
        ),
      )),
    );
  }

  String display(){
  return this.displaytext = "You've entered data!";
  }
}
