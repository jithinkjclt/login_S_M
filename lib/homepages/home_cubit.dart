import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:login_s_m/homepages/postmethode.dart';

import '../data_pages/data_pages.dart';
import '../shared_preference/sharedprefernece.dart';

part 'home_state.dart';

String? token;

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  TextEditingController userctr = TextEditingController();
  TextEditingController passctr = TextEditingController();
  String url = "https://crm-beta-api.vozlead.in/api/v2/account/login/";

  apiPostData(context) async {
    var body = {
      "username": userctr.text.trim(),
      "password": passctr.text.trim(),
    };
    final response = await http.post(
      Uri.parse(url),
      body: body,
    );
    print(response.body);
    if (response.statusCode == 200) {
      final res = jsonDecode(response.body);
      final data = Postmethode.fromJson(res);
      token = data.data!.token;
      final data1 = LocalStorage();
      data1.getApi(token!);
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const datas(),
      ));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          duration: Duration(milliseconds: 100), content: Text("Wrong")));
    }
  }
}
