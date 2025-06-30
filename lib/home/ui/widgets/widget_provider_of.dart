import 'package:flutter/material.dart';
import 'package:flutter_application_1/home/view_model/my_model.dart';
import 'package:provider/provider.dart';

class WidgetProviderOf extends StatelessWidget {
   WidgetProviderOf({super.key});

  @override
  Widget build(BuildContext context) {
 //   var myModel = Provider.of<MyModel>(context);
 // var myModel = Provider.of<MyModel>(context, listen: false);
    
    return Column(
      children: [
        // Center(
        //   // child: Text(
        //   //   "${myModel.Name}",
        //   //   style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        //   // ),
        // ),
      
        Center(child: Text("${context.watch<MyModel>().Name}")),
        SizedBox(height: 20),
        MaterialButton(
          color: Colors.blue,
          textColor: Colors.white,

          onPressed: () {
            context.read<MyModel>().changeName();
          },
          child: Text("Change Name", style: TextStyle(color: Colors.white)),
        ),
      ],
    );
  }
}
