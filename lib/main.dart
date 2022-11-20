import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'counter.dart';
import 'selector.dart';
import 'consumar.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider(

      create: (context) => counter(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(

          primarySwatch: Colors.red,
        ),
         // home:consumar(title: "",),
     home:selector(title: 'Ezzaldeen'),
      ),
    );
  }
}

