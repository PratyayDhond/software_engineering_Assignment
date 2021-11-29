import 'package:flutter/material.dart';
import 'Explore.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Books',
        home: SearchPage()
    );

  }
}

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  get rating => null;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade50,
          title: Container(
            width: double.infinity,
            height: 40,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
            child: Center(
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.arrow_back),
                    suffixIcon: IconButton(
                      icon: Icon(Icons.shopping_cart),
                      onPressed: () {
                      },
                    ),
                    hintText: 'Search...',
                    border: InputBorder.none),
              ),
            ),
          )
      ),

      backgroundColor: Color(0xffCDE3F1),
      body: Container(
        child: Stack(
          children: [
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: height * 0, left: width * 0.05),
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
                                Row(
                                  children: [
                                    Container(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          ClipRRect(
                                            borderRadius: BorderRadius.circular(height*0.02),
                                            child: Image(image: AssetImage("asset/book1.png"),
                                              height: height*0.28, width: width*0.4,),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(child: Container()),

                                    Container(
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [

                                          Padding(
                                            padding: EdgeInsets.only(top: height*0,right: width*0.05),
                                            child: Text('One Indian Girl',style: TextStyle( fontSize: 25),),
                                          ),Padding(
                                            padding: EdgeInsets.only(right: width*0.05),
                                            child:  Text('Chetan Bhagat',style: TextStyle(color: Color(0xff9A9A9A,), fontSize: 15),),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: height*0.01,),
                                Row(
                                  children: [
                                    Container(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(left: width*0.02),
                                            child: Text('4.2',),
                                          ),Padding(
                                            padding: EdgeInsets.only(left: width*0.02),
                                            child:  Text('Rating',style: TextStyle(color: Color(0xff9A9A9A,), fontSize: 11),),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(child: Container()),
                                    Container(
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(top: height*0.01,left: width*0.02),
                                            child: FittedBox(
                                              child: Text('256',
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: width*0.02),
                                            child:  Text('Pages',style: TextStyle(color: Color(0xff9A9A9A,), fontSize: 11),),
                                          ),
                                        ],
                                      ),
                                    ),

                                    Expanded(child: Container()),
                                    Container(
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(top: height*0.01,left: width*0.02),
                                            child: FittedBox(
                                              child: Text('English',
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: width*0.02),
                                            child:  Text('Language',style: TextStyle(color: Color(0xff9A9A9A,), fontSize: 11),),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(top: height*0.05,left: width*0.02),
                                            child: Text('About The Book',),
                                          ),Padding(
                                            padding: EdgeInsets.only(left: width*0.02),
                                            child:  Text('One Indian Girl is an Indian Book written by the Indian author \n Chetan Bhagat.The book is about a girl name Radhika Mehta, \n  who is a worker at the Distressed Debt group of Goldman Sachs, \n the investment bank.',style: TextStyle(color: Color(0xff9A9A9A,), fontSize: 11),),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(top: height*0.05,left: width*0.02),
                                            child: Text('Rate The Book:'),


                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(top: height*0.06,left: width*0.02),
                                            child: Text('Price',),
                                          ),Padding(
                                            padding: EdgeInsets.only(left: width*0.02),
                                            child:  Text('786/-',style: TextStyle(color: Color(0xff9A9A9A,), fontSize: 11),),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(child: Container()),
                                    Container(
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(top: height*0.02,left: width*0.05),
                                            child:SizedBox(
                                              height: 45, width: 120,
                                                child: TextButton(
                                                  style: TextButton.styleFrom(
                                                    primary: Colors.blue,
                                                    backgroundColor: Colors.white,
                                                  ),
                                                  onPressed: () { },
                                                  child: Text('Buy Now'),
                                                )
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
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
          ],
        ),
      ),

    );
  }
}










