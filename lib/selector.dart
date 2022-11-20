

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'counter.dart';


class selector extends StatefulWidget {
  const selector({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  State<selector> createState() => _selectorState();
}

class _selectorState extends State<selector> {
  @override

  Widget build(BuildContext context) {
    print("My Name is Ezzaldeen");
    return Scaffold(
        appBar: AppBar(

        title: Text(widget.title),
    ),
    body: ListView(
    children: <Widget>[
    Selector<counter,int>(
      selector: (context,value,)=>value.selector2,

      builder: (context ,value1, child){
    return
      Text('${value1}');//يتم الستدعاء المتغير الاول
    },),
    Selector<counter,String>(
      selector: (context,value,)=>value.selector1,
      builder: (context ,value2, child){
    return Text(value2);//يتم الستدعاء المتغير الاول
    },),


      Consumer<counter>(builder: (context ,value, child){

        // ignore: deprecated_member_use
        return  RaisedButton(onPressed: (){


          value.show1();//يتم استدعاء ادالة الثاني
        },
            child: Text('The selector'));
      },),
        Consumer<counter>(builder: (context ,value, child){

          // ignore: deprecated_member_use
          return  RaisedButton(onPressed: (){


            value.incrementCounter();//يتم استدعاء ادالة الثاني
          },
              child: Text('The Selector'));
        },),



    ],
    ),
    );
  }
}