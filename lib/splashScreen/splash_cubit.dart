
import 'dart:js';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import '../data_pages/data_pages.dart';
import '../homepages/home_cubit.dart';
import '../homepages/login_page.dart';
import '../shared_preference/sharedprefernece.dart';

part 'splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(SplashInitial()){
    flash(context);
  }

  flash(context) async {
    token = await LocalStorage().setApi();
    print(">>>>>>>>>>>>>>>>>>>>>>>.$token");

    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
          builder: (context) => token == null ? login() : const datas()),
    );
  }

}
