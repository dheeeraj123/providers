import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';
import 'package:project_providerssss/provider_ApiIntegration.dart';

class ApiController extends ChangeNotifier{
  var bdy;
  Future<dynamic>getdata()async{
    Response response=await get(Uri.parse("https://dog.ceo/api/breeds/image/random"));

    if(response.statusCode==200){
      var body=jsonDecode(response.body);
      bdy=body["message"];

      notifyListeners();
      return bdy;
    }

  }
}