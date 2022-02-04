// ignore_for_file: deprecated_member_us, deprecated_member_use
// import 'dart:html';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
// import 'Que.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.tealAccent,
      appBar: AppBar(
        backgroundColor: Colors.yellowAccent,
        title: Text(
          "Programmer_Mamit",
          style: TextStyle(fontSize: 25, color: Colors.black),
        ),
      ),
      body: MyHome(),
    ));
  }
}

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  // List<Icon> scorekeeper = [
  // ];
  List<String> Que=[
    'In C Or C++ Mingw Compiler Working Ya Not',
    'In Java Code Only 1 System In Work',
    'Flutter Is a Framework YA \'Not',
    "void main() \n {  bool test;  \n test = 12 > 5; \nprint(test);\n}",
    'Boolean data can have at most two possible values.',
    'Syntax: bool variable_name ',
    'Dart Is a Language',
    'You Follow Programmer=>Mamit',
    'I Call You',
  ];
  List <bool> ans=[true,false,false,true,false,true,true,false,false];
  int QueNum = 0;
  int write=0;
  int wrong=0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 200,
          width: 300,
          child: Text(
            Que[QueNum],
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 25),
          ),
          // color: Colors.teal[400],
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                // color: Colors.green,
                child: FlatButton(
                  onPressed: () {
                    bool CorrecAns = ans[QueNum];
                    if(CorrecAns==true){
                      print("Right Ans");
                      write++;
                    }
                    else{
                      print("Wrong Ans");
                      wrong++;
                    }
                    setState(() {
                      QueNum++;
                    });

                  },
                  child: Card(
                    color: Colors.lightGreenAccent,
                    child: ListTile(
                      iconColor: Colors.black,
                      leading: Icon(Icons.done_outline),
                      title: Text(
                        "True",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
                child: Container(
              // color: Colors.pink,
              child: FlatButton(
                onPressed: () {
                  bool CorrecAns = ans[QueNum];
                  if(CorrecAns==false){
                    print("Right Ans");
                    write++;
                  }
                  else{
                    print("Wrong Ans");
                    wrong++;
                  }

                  setState(() {
                    QueNum++;
                    // scorekeeper.add(Icon(
                    //   Icons.close,
                    //   color: Colors.red,
                    // ),
                    // );

                  });
                },
                child: Card(
                  color: Colors.redAccent,
                  child: ListTile(
                    iconColor: Colors.black,
                    leading: Icon(Icons.cancel_sharp),
                    title: Text(
                      "False",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ),
            )),
          ],
        ),
        SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
             Container(decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    color: Colors.amber),
                child: FlatButton(
                  onPressed: () {
                    Alert(
                    context: context,
                    type: AlertType.success,
                    title: "Done",
                    desc: "Right Question: $write\n"
                        "Wrong Question: $wrong\n",
                    ).show();
                    setState(() {
                      QueNum=0;
                    });
                  },
                  child:
                  Text("Submit Test",style: TextStyle(fontSize: 18,),),
                ),
              ),
            ],
        ),
      ],
    );
  }
}
