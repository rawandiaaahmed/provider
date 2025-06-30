import 'package:flutter/material.dart';
import 'package:flutter_application_1/home/model/model_cart.dart';
import 'package:flutter_application_1/home/ui/widgets/checkout.dart';
import 'package:flutter_application_1/home/ui/widgets/items.dart';
import 'package:provider/provider.dart';

class ExampleProvider extends StatelessWidget {
  ExampleProvider({super.key});
  List<Items> items = [
    Items(name: "Item 1", price: 10.0),
    Items(name: "Item 2", price: 20.0),
    Items(name: "Item 3", price: 30.0),
    Items(name: "Item 4", price: 40.0),
    Items(name: "Item 5", price: 50.0),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example Provider'),
        backgroundColor: Colors.blue,
        actions: [
          Row(
            children: [
              IconButton(onPressed: () {
                 Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const Checkout()),
  );
              }, icon: Icon(Icons.add_shopping_cart)),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Consumer<ModelCart>(
                  builder: (context, ModelCart, child) {
                    return Text(" ${ModelCart.price} items");
                  },
                ),
              ),
            ],
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Card(
            child: Consumer<ModelCart>(
              builder: (context, ModelCart, child) {
                return ListTile(
                  title: Text(items[index].name),
                  subtitle: Text("\$${items[index].price}"),
                  trailing: IconButton(
                    icon: const Icon(Icons.add),
                    onPressed: () {
              ModelCart.add(items[index]);
                    
                    },
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
