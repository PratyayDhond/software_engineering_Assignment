import 'package:flutter/material.dart';
import 'dart:math' as math;
class Search extends StatefulWidget {
  Search({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(

      backgroundColor: Color(0xffCDE3F1),
      body: Container(

        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: height * 0.04, left: width * 0.05),
              child: SizedBox(
                height: height * 0.045,
                child: Row(
                  children: [
                    SizedBox(width: width * 0.02),

                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: height * 0.007,
                  left: width * 0.05,
                  right: width * 0.05),
              child: SizedBox(
                height: height * 0.060,
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(25)),
                  child: Row(
                    children: [
                      SizedBox(width: width * 0.025),
                      InkWell(
                        onTap: (){

                        },
                        child: Container(
                            child: InkWell(
                              onTap: (){
                                Navigator.pop(context);
                              },
                              child: Icon(
                                  Icons.arrow_back
                              ),
                            )
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Text('Search'),
                      ),
                      Expanded(child: Container()),
                      Icon(
                        Icons.filter_alt_sharp,
                        size: width*0.08,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            right: MediaQuery.of(context).size.width * 0.03,
                            top: MediaQuery.of(context).size.height * 0.005,
                            bottom:
                            MediaQuery.of(context).size.height * 0.005),

                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: height * 0.005, left: width * 0.05),
              child: SizedBox(
                height: height * 0.015,
                child: Row(
                  children: [
                    SizedBox(width: width * 0.02),

                  ],
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: width*0.1),
                child: Container(
                    decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: Color(0x9f7392BE)),
                        )
                    ),
                  child: Row(
                    children: [
                      Padding(
                        padding:  EdgeInsets.only(bottom: 8.0),
                        child: Icon(Icons.update),
                      ),
                      SizedBox(width: width*0.05,),

                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Text('Harry Potter',style: TextStyle(color: Color(0xff42459C)),),
                      ),
                    ],
                  ),
                ),
              ),

            ),
            Container(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: width*0.1,vertical: height*0.01),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Color(0x9f7392BE)),
                      )
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding:  EdgeInsets.only(bottom: 8.0),
                        child: Icon(Icons.update),
                      ),
                      SizedBox(width: width*0.05,),

                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Text('Lord of thr Rings',style: TextStyle(color: Color(0xff42459C)),),
                      ),
                    ],
                  ),
                ),
              ),

            ),
            Container(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: width*0.1,vertical: height*0.01),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Color(0x9f7392BE)),
                      )
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding:  EdgeInsets.only(bottom: 8.0),
                        child: Icon(Icons.update),
                      ),
                      SizedBox(width: width*0.05,),

                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Text('After',style: TextStyle(color: Color(0xff42459C)),),
                      ),
                    ],
                  ),
                ),
              ),

            ),
            Container(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: width*0.1,vertical: height*0.01),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Color(0x9f7392BE)),
                      )
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding:  EdgeInsets.only(bottom: 8.0),
                        child: Icon(Icons.update),
                      ),
                      SizedBox(width: width*0.05,),

                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Text('The Haunting of Hill House',style: TextStyle(color: Color(0xff42459C)),),
                      ),
                    ],
                  ),
                ),
              ),

            ),
            Container(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: width*0.1,vertical: height*0.01),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Color(0x9f7392BE)),
                      )
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding:  EdgeInsets.only(bottom: 8.0),
                        child: Icon(Icons.update),
                      ),
                      SizedBox(width: width*0.05,),

                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Text('Wings of Fire',style: TextStyle(color: Color(0xff42459C)),),
                      ),
                    ],
                  ),
                ),
              ),

            ),
            Container(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: width*0.1,vertical: height*0.01),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: Color(0x9f7392BE)),
                      )
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding:  EdgeInsets.only(bottom: 8.0),
                        child: Icon(Icons.update),
                      ),
                      SizedBox(width: width*0.05,),

                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Text('Two States',style: TextStyle(color: Color(0xff42459C)),),
                      ),
                    ],
                  ),
                ),
              ),

            ),



          ],
        ),

      ),
    );
  }
}
