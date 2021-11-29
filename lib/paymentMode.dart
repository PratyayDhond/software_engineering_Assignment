import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:software_engineering/search.dart';
import 'books/book1.dart' as Book1;
import 'books/book2.dart' as Book2;
import 'books/book3.dart' as Book3;
import 'books/book4.dart' as Book4;
import 'explore.dart';
import 'card.dart' as Pay;
class PaymentMode extends StatefulWidget {
  const PaymentMode({Key? key}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  _PaymentModeState createState() => _PaymentModeState();
}
enum Mode { Credit, PayPal, Cash }
class _PaymentModeState extends State<PaymentMode> {
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
    Mode? _character = Mode.Credit;

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
                    Text('Payment Mode',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 32),),
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
                        Row(
                          children: [
                            Row(
                              children: [
                                // Image(image: AssetImage("asset/cc.png")),
                                Radio<Mode>(value: Mode.Credit, groupValue: _character,
                                    onChanged: (Mode ? value){
                                  setState(() {
                                    _character = value;
                                  });
                                } ),
                                SizedBox(width: 10,),
                                Text(
                                    "Credit Card",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                      fontSize: 19
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Row(
                              children: [
                                // Image(image: AssetImage("asset/cc.png")),
                                Radio<Mode>(value: Mode.PayPal, groupValue: _character,
                                    onChanged: (Mode ? value){
                                      setState(() {
                                        _character = value;
                                      });
                                    } ),
                                SizedBox(width: 10,),
                                Text(
                                  "PayPal",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 19,
                                      color: Color(0xff6e6e6e)
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Row(
                              children: [
                                // Image(image: AssetImage("asset/cc.png")),
                                Radio<Mode>(value: Mode.Cash, groupValue: _character,
                                    onChanged: (Mode ? value){
                                      setState(() {
                                        _character = value;
                                      });
                                    } ),
                                SizedBox(width: 10,),
                                Text(
                                  "Cash on Delivery",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 19,
                                      color: Color(0xff6e6e6e)
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
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
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Pay.Card()));
                  },
                  child: Container(
                    height: height*0.08,
                    width: width*0.8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: Color(0xff002161),
                    ),
                    child: Center(child: Text('Continue',style: TextStyle(color: Colors.white),)),
                  ),
                ),
              )
            ],
          )

      ),
    );
  }
}