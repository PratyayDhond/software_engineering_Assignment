import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:software_engineering/search.dart';
import 'books/book1.dart' as Book1;
import 'books/book2.dart' as Book2;
import 'books/book3.dart' as Book3;
import 'books/book4.dart' as Book4;
import 'explore.dart';

class Card extends StatefulWidget {
  Card({Key? key,}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  _CardState createState() => _CardState();
}

class _CardState extends State<Card> {
  int _counter = 0;
  TextEditingController cardNo = new TextEditingController();
  TextEditingController mm = new TextEditingController();
  TextEditingController cvv = new TextEditingController();
  TextEditingController name = new TextEditingController();

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
              padding: EdgeInsets.only(left: width*0.01,top: height*0.05),
              child: Row(
                children: [
                  IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back,size: 32,)),
                  SizedBox(width: width*0.02,),
                  Text('Enter Card Details',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 32),),
                ],
              ),
            ),
            SizedBox(height: height*0.1,),
            Padding(
              padding: EdgeInsets.only(),
              child: Container(
                height: height*0.4,
                width: width*0.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(45.0),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: width*0.08),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      new TextField(
                        decoration: new InputDecoration(
                          labelText: 'Credit Card Details',
                          hintText: '6528 **** **** ****',
                          hintStyle: TextStyle(
                            color: Color(0xff002A7C),
                          )
                        ),
                        keyboardType: TextInputType.number,
                        maxLength: 16,
                        obscureText: false,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                              child: TextField(
                                  decoration: new InputDecoration(
                                      labelText: 'Valid till Year'),
                                  keyboardType: TextInputType.number,
                                  maxLength: 5,
                                  obscureText: false)),
                          Expanded(
                              child: TextField(
                                decoration: new InputDecoration(
                                    labelText: 'CVV'),
                                keyboardType: TextInputType.number,
                                maxLength: 3,
                                obscureText: true,
                              )
                          )
                        ],
                      ),
                      Column(
                        children: [
                          new TextField(
                            decoration: new InputDecoration(
                                labelText: 'Card Holders Name'),
                          )
                        ],
                      ),
                      SizedBox(height: height*0.06,)
                    ],
                  ),
                  // Column(
                  //   children: [
                  //     TextFormField(
                  //       decoration: InputDecoration(
                  //         labelText: 'Credit Card Details',
                  //         hintText: '6528 xxxx xxxx xxxx',
                  //
                  //       ),
                  //       controller: cardNo,
                  //     ),
                  //   ],
                  // ),
                ),

              ),
            ),
            SizedBox(height: height*0.3,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width*0.1),
              child: InkWell(
                onTap: (){},
                child: Container(
                  height: height*0.08,
                  width: width*0.8,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Color(0xff002161),
                  ),
                  child: Center(child: Text('Pay Now',style: TextStyle(color: Colors.white),)),
                ),
              ),
            )
          ],
        )

      ),
    );
  }
}






class CreditCard extends StatefulWidget {
  const CreditCard({Key? key}) : super(key: key);

  @override
  _CreditCardState createState() => _CreditCardState();
}

class _CreditCardState extends State<CreditCard> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Color(0xffCDE3F1),
        appBar: new AppBar(
          backgroundColor: Color(0xffCDE3F1),
          title: Text(
            "Enter Card Details",
          ),
          elevation: 0.0,
          actionsIconTheme: new IconThemeData(color: Color(0xff42459c)),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(
                  top: 30,
                  bottom: 80,
                  left: 30,
                  right: 30,
                ),
                child: new Container(
                  height: 300.0,
                  width: 400.0,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30.0)),
                  child: Padding(
                    child: Column(
                      children: [
                        new TextField(
                          decoration: new InputDecoration(
                            labelText: 'Credit Card Details',
                          ),
                          keyboardType: TextInputType.number,
                          maxLength: 16,
                          obscureText: false,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                                child: TextField(
                                    decoration: new InputDecoration(
                                        labelText: 'Valid till Year'),
                                    keyboardType: TextInputType.number,
                                    maxLength: 4,
                                    obscureText: false)),
                            Expanded(
                                child: TextField(
                                  decoration: new InputDecoration(labelText: 'CVV'),
                                  keyboardType: TextInputType.number,
                                  maxLength: 3,
                                  obscureText: true,
                                ))
                          ],
                        ),
                        Column(
                          children: [
                            new TextField(
                              decoration: new InputDecoration(
                                  labelText: 'Card Holder\'s Name'),
                            )
                          ],
                        )
                      ],
                    ),
                    padding: const EdgeInsets.all(16.0),
                  ),
                ),
              ),
              Container(
                  child: Padding(
                      padding: const EdgeInsets.only(
                          left: 10.0, right: 10.0, top: 10.0),
                      child: GestureDetector(
                        onTap: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => paynow()));
                        },
                        child: new Container(
                          alignment: Alignment.center,
                          height: 70.0,
                          decoration: new BoxDecoration(
                              color: Color(0xff42459c),
                              borderRadius: new BorderRadius.circular(10.0)),
                          child: new Text(
                            " PayNow",
                            style: new TextStyle(
                                fontSize: 20.0, color: Colors.white),
                          ),
                        ),
                      )))
            ],
          ),
        ));
  }
}