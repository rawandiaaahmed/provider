import 'package:flutter/material.dart';
import 'package:flutter_application_1/home/model/model_cart.dart';
import 'package:flutter_application_1/home/ui/example_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    //   title: 'Flutter Demo',
    //   theme: ThemeData(

    //     colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    //   ),
    //   home:  ExampleProvider(),
    // );
    return ChangeNotifierProvider(
      create: (context) {
        return ModelCart();
        
      },
      child:  MaterialApp(
       title: 'Flutter Demo',
       debugShowCheckedModeBanner: false,
       theme: ThemeData(

         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
       ),
       home:  ExampleProvider(),
     ) ,
    );
  }
}
