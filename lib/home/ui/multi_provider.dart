import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// Model 1
class MyModelprov extends ChangeNotifier {
  String name = "Waad Tamer";

  void changeName() {
    name = "Rawan Diaa";
    notifyListeners();
  }
}

// Model 2
class MyModelprovtwo extends ChangeNotifier {
  String age = "20";

  void changeAge() {
    age = "22";
    notifyListeners();
  }
}

class MultiProviderExample extends StatelessWidget {
  const MultiProviderExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => MyModelprov()),
        ChangeNotifierProvider(create: (_) => MyModelprovtwo()),
      ],
      child: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final nameProvider = Provider.of<MyModelprov>(context);
    final ageProvider = Provider.of<MyModelprovtwo>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('MultiProvider Example'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // عرض الاسم
            Consumer<MyModelprov>(
              builder: (context, model, child) {
                return Text("Name: ${model.name}", style: const TextStyle(fontSize: 24));
              },
            ),
            const SizedBox(height: 20),
            // زر لتغيير الاسم
            ElevatedButton(
              onPressed: () {
                nameProvider.changeName();
              },
              child: const Text("Change Name"),
            ),
            const SizedBox(height: 30),
            // عرض العمر
            Consumer<MyModelprovtwo>(
              builder: (context, model, child) {
                return Text("Age: ${model.age}", style: const TextStyle(fontSize: 24));
              },
            ),
            const SizedBox(height: 20),
            // زر لتغيير العمر
            ElevatedButton(
              onPressed: () {
                ageProvider.changeAge();
              },
              child: const Text("Change Age"),
            ),
            const SizedBox(height: 40),
            // زر لتغيير الاثنين معًا
            ElevatedButton(
              onPressed: () {
                nameProvider.changeName();
                ageProvider.changeAge();
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
              child: const Text("Change Both"),
            ),
          ],
        ),
      ),
    );
  }
}