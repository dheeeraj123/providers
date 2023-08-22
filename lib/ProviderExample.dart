import 'package:flutter/material.dart';
import 'package:project_providerssss/ProviderController.dart';
import 'package:provider/provider.dart';

class
extends StatelessWidget {
   ProviderExample({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {

    print("ui loaded");
    return Scaffold(
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Text(Provider.of<CounterController>(context).count.toString()),

          Consumer<CounterController>(
            builder: (context,value,_) {
              print("text loaded");
              return Text(value.count.toString());
            }
          ),



          FloatingActionButton(onPressed: (){

            Provider.of<CounterController>(context,listen: false).updateCount();
            Provider.of<CounterController>(context,listen: false).updatetheme();

          }),


        ],
      )),

    );
  }
}
