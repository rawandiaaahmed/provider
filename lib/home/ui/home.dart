// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_application_1/home/view_model/my_model.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyModel(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Provider Example'),
          backgroundColor: Colors.blue,
        ),
        body: Consumer <MyModel>(
          builder: (context, MyModel, child) {
            return Column(
              children: [
                Center(child: Text("${MyModel.Name}")),
                SizedBox(height: 20),
                MaterialButton(
                  color: Colors.blue,
                  textColor: Colors.white,

                  onPressed: () {
                    MyModel.changeName();
                  },
                  child: Text("Change Name",style: TextStyle(color: Colors.white),),
                ),
              ],
            );
            
          },
          
        ),
        
        
      ),
    );
  }
}
