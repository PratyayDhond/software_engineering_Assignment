import 'package:flutter/material.dart';

class Explore extends StatefulWidget {
  Explore({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _ExploreState createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
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
                      Padding(
                        padding: EdgeInsets.only(
                            right: MediaQuery.of(context).size.width * 0.0025,
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
              padding: EdgeInsets.only(left: width * 0.2,top:
              height*0.05,right:width*0.2),
              child: Container(
                color: Colors.white,

              ),
            ),
            Padding(
              padding: EdgeInsets.only(left:
              width*0.05,right: width*0.05),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: height*0.698,
                        width: width*0.9,
                        color: Color(0xffffCDE3F1),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right:width*0.67),
                              child: Text('Explore', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 26)),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right:width*0.76,top: height*0.01,bottom: height*0.01),
                              child: Text('Thriller', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18)),
                            ),
                            Container(
                              child:
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: [
                                      Container(
                                        child: InkWell(
                                          onTap: (){
                                            print("XD");
                                          },
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              ClipRRect(
                                                borderRadius: BorderRadius.circular(height*0.02),
                                                child: Image(image: AssetImage("asset/e_book1.png"),
                                                  height: height*0.21, width: width*0.3,),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(top: height * 0.0075,left: width*0.02),
                                                child: Text('You',),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(left: width*0.02),
                                                child:  Text('Caroline Kepnes',
                                                  style: TextStyle(color: Color(0xff9A9A9A,), fontSize: 11),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(left: width*0.02),
                                                child:  Text('RS. 650',
                                                  style: TextStyle(color: Color(0xff9A9A9A,), fontSize: 11),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: width*0.04,),
                                      Container(
                                        child: InkWell(
                                          onTap: (){
                                            print("XD");
                                          },
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              ClipRRect(
                                                borderRadius: BorderRadius.circular(height*0.02),
                                                child: Image(image: AssetImage("asset/e_book2.png"),
                                                  height: height*0.21, width: width*0.3,),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(top: height * 0.0075,left: width*0.02),
                                                child: Text('The Da Vince Code',),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(left: width*0.02),
                                                child:  Text('Dan Brown',
                                                  style: TextStyle(color: Color(0xff9A9A9A,), fontSize: 11),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(left: width*0.02),
                                                child:  Text('RS. 765',
                                                  style: TextStyle(color: Color(0xff9A9A9A,), fontSize: 11),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: width*0.04,),
                                      Container(
                                        child: InkWell(
                                          onTap: (){
                                            print("XD");
                                          },
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              ClipRRect(
                                                borderRadius: BorderRadius.circular(height*0.02),
                                                child: Image(image: AssetImage("asset/e_book3.png"),
                                                  height: height*0.21, width: width*0.3,),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(top: height * 0.0075,left: width*0.02),
                                                child: Text('The Night',),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(left: width*0.02),
                                                child:  Text('Nidhi Updhy',
                                                  style: TextStyle(color: Color(0xff9A9A9A,), fontSize: 11),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(left: width*0.02),
                                                child:  Text('RS. 599',
                                                  style: TextStyle(color: Color(0xff9A9A9A,), fontSize: 11),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: width*0.04,),
                                      Container(
                                        child: InkWell(
                                          onTap: (){
                                            print("XD");
                                          },
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              ClipRRect(
                                                borderRadius: BorderRadius.circular(height*0.02),
                                                child: Image(image: AssetImage("asset/e_book4.png"),
                                                  height: height*0.21, width: width*0.3,),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(top: height * 0.0075,left: width*0.02),
                                                child: Text('Percy Jackson',),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(left: width*0.02),
                                                child:  Text('Rick Riordan',
                                                  style: TextStyle(color: Color(0xff9A9A9A,), fontSize: 11),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(left: width*0.02),
                                                child:  Text('RS. 499',
                                                  style: TextStyle(color: Color(0xff9A9A9A,), fontSize: 11),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: width*0.04,),
                                    ],

                                  ),
                                )

                                // Expanded(child: Container()),
                                // Container(
                                //   child: Column(
                                //     mainAxisAlignment: MainAxisAlignment.start,
                                //     crossAxisAlignment: CrossAxisAlignment.start,
                                //     children: [
                                //       ClipRRect(
                                //         borderRadius: BorderRadius.circular(height*0.02),
                                //         child: Image(image: AssetImage("asset/book2.png"),
                                //           height: height*0.28, width: width*0.4,),
                                //       ),
                                //       Padding(
                                //         padding: EdgeInsets.only(top: height*0.01,left: width*0.02),
                                //         child: Text('Wonder',),
                                //       ),Padding(
                                //         padding: EdgeInsets.only(left: width*0.02),
                                //         child:  Text('R.J.Palacio',style: TextStyle(color: Color(0xff9A9A9A,), fontSize: 11),),
                                //       ),
                                //
                                //     ],
                                //   ),
                                // ),

                            ),
                            SizedBox(height: height*0.03,),
                            Padding(
                              padding: EdgeInsets.only(bottom: height*0.01,right:width*0.76),
                              child: Text('Fictional', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
                            ),
                            Container(
                                child:
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: [
                                      Container(
                                        child: InkWell(
                                          onTap: (){
                                            print("XD");
                                          },
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              ClipRRect(
                                                borderRadius: BorderRadius.circular(height*0.02),
                                                child: Image(image: AssetImage("asset/e_book5.png"),
                                                  height: height*0.21, width: width*0.3,),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(top: height * 0.0075,left: width*0.02),
                                                child: Text('All the lights we..',),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(left: width*0.02),
                                                child:  Text('Anthony Doerr',
                                                  style: TextStyle(color: Color(0xff9A9A9A,), fontSize: 11),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(left: width*0.02),
                                                child:  Text('RS. 899',
                                                  style: TextStyle(color: Color(0xff9A9A9A,), fontSize: 11),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: width*0.03,),
                                      Container(
                                        child: InkWell(
                                          onTap: (){
                                            print("XD");
                                          },
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              ClipRRect(
                                                borderRadius: BorderRadius.circular(height*0.02),
                                                child: Image(image: AssetImage("asset/e_book6.png"),
                                                  height: height*0.21, width: width*0.3,),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(top: height * 0.0075,left: width*0.02),
                                                child: Text('Beloved',),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(left: width*0.02),
                                                child:  Text('Toni Morrison',
                                                  style: TextStyle(color: Color(0xff9A9A9A,), fontSize: 11),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(left: width*0.02),
                                                child:  Text('RS. 420',
                                                  style: TextStyle(color: Color(0xff9A9A9A,), fontSize: 11),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: width*0.03,),
                                      Container(
                                        child: InkWell(
                                          onTap: (){
                                            print("XD");
                                          },
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              ClipRRect(
                                                borderRadius: BorderRadius.circular(height*0.02),
                                                child: Image(image: AssetImage("asset/e_book7.png"),
                                                  height: height*0.21, width: width*0.3,),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(top: height * 0.0075,left: width*0.02),
                                                child: Text('The Invisible man',),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(left: width*0.02),
                                                child:  Text('Ralph Elison',
                                                  style: TextStyle(color: Color(0xff9A9A9A,), fontSize: 11),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(left: width*0.02),
                                                child:  Text('RS. 320',
                                                  style: TextStyle(color: Color(0xff9A9A9A,), fontSize: 11),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: width*0.03,),
                                      Container(
                                        child: InkWell(
                                          onTap: (){
                                            print("XD");
                                          },
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              ClipRRect(
                                                borderRadius: BorderRadius.circular(height*0.02),
                                                child: Image(image: AssetImage("asset/e_book8.png"),
                                                  height: height*0.21, width: width*0.3,),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(top: height * 0.0075,left: width*0.02),
                                                child: Text('The Host',),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(left: width*0.02),
                                                child:  Text('Stephiene Meyer',
                                                  style: TextStyle(color: Color(0xff9A9A9A,), fontSize: 11),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(left: width*0.02),
                                                child:  Text('RS. 699',
                                                  style: TextStyle(color: Color(0xff9A9A9A,), fontSize: 11),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: width*0.03,),
                                    ],

                                  ),
                                )

                              // Expanded(child: Container()),
                              // Container(
                              //   child: Column(
                              //     mainAxisAlignment: MainAxisAlignment.start,
                              //     crossAxisAlignment: CrossAxisAlignment.start,
                              //     children: [
                              //       ClipRRect(
                              //         borderRadius: BorderRadius.circular(height*0.02),
                              //         child: Image(image: AssetImage("asset/book2.png"),
                              //           height: height*0.28, width: width*0.4,),
                              //       ),
                              //       Padding(
                              //         padding: EdgeInsets.only(top: height*0.01,left: width*0.02),
                              //         child: Text('Wonder',),
                              //       ),Padding(
                              //         padding: EdgeInsets.only(left: width*0.02),
                              //         child:  Text('R.J.Palacio',style: TextStyle(color: Color(0xff9A9A9A,), fontSize: 11),),
                              //       ),
                              //
                              //     ],
                              //   ),
                              // ),

                            ),





                          ],
                        ),
                      )
                    ],
                  ),

                ],
              ),
            ),

          ],
        ),

      ),
    );
  }
}
