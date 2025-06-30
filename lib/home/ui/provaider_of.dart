
import 'package:flutter/material.dart';
import 'package:flutter_application_1/home/ui/widgets/widget_provider_of.dart';
import 'package:provider/provider.dart';

import 'package:flutter_application_1/home/view_model/my_model.dart';

class ProvaiderOf extends StatelessWidget {
  const ProvaiderOf({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyModel(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Provider Example'),
          backgroundColor: Colors.blue,
        ),
        body: WidgetProviderOf(),
          
          
        
        
        
      ),
    );
  }
}
