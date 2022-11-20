

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'counter.dart';


class consumar extends StatefulWidget {
  const consumar({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  State<consumar> createState() => _consumarState();
}





class _consumarState extends State<consumar> {
  @override

  Widget build(BuildContext context) {
    print("My Name is Ezzaldeen");
    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'CONSUMER',
            ),

            Consumer<counter>(


              builder: (contex, cont, child) =>
                  Text(
                      '${cont.name}'),


            ),

            ElevatedButton(onPressed: () {
              Provider.of<counter>(context, listen: false).incrementCounter();
            }, child: Text('add1')),


            Consumer<counter>(builder: (context, valu, child) =>
                Text('${valu.solary}')
            ),
            ElevatedButton(onPressed: () {
              Provider.of<counter>(context, listen: false).pulsalary();
            }, child: Text('add2'))
          ],
        ),
      ),


    );
  }
}



