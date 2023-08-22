import 'package:flutter/material.dart';
import 'package:project_providerssss/Provider_ApiController.dart';
import 'package:provider/provider.dart';

class ApiProvider extends StatelessWidget {
  const ApiProvider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(children: [
            FutureBuilder(
                future: Provider.of<ApiController>(context,listen: false).getdata(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Image(
                        height:200,
                        width: 410,
                        image: NetworkImage(snapshot.data));
                  } else {
                   return Text('no data');
                  }
                },),
          ]),
        ),
      ),
    );
  }
}
