import 'package:flutter/material.dart';
import 'package:flutter_application_1/home/model/model_cart.dart';
import 'package:provider/provider.dart';

class Checkout extends StatefulWidget {
  const Checkout({super.key});

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Checkout'),
        backgroundColor: Colors.blue,
      ),
      body: Consumer<ModelCart>(builder: (context, ModelCart, child) {
        return ListView.builder(itemCount:ModelCart.Pasketitems.length ,itemBuilder: (context, index) {
       
        return Card(
          child: ListTile(
            title:  Text("${ModelCart.Pasketitems[index].name}"),
          
            trailing: IconButton(onPressed: (){ModelCart.remove(ModelCart.Pasketitems[index]);}, icon: Icon(Icons.remove)),
             // Example price
          ),
        );
      });
      }),
    );
  }
}