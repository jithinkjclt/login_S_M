import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;

import '../homepages/home_cubit.dart';

import 'dataMethode.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit( this.context) : super(HomeInitial()){
    apidata();
  }
  BuildContext context;
  String url = "https://crm-beta-api.vozlead.in/api/v2/lead/lead_list/";

   apidata() async {
    final response = await http.get(Uri.parse(url), headers: {
      'Authorization': 'token $token',
    });
    print(response.body);
    final res = jsonDecode(response.body);
    final data = MethodeData.fromJson(res);
    emit(viewall(data: data));
  }


}
