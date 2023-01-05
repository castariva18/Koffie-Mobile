import 'dart:async';

// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_coffe/models/models.dart';
import 'package:flutter_coffe/services/services.dart';

part 'coffee_state.dart';

class CoffeeCubit extends Cubit<CoffeeState> {
  CoffeeCubit() : super(CoffeeInitial());
  void getCoffeeData() async {
    print("object");
    try {
      emit(CoffeeLoading());
      var duration = const Duration(milliseconds: 1500);
      Timer(duration, () async {
        List<Coffee> result = await CoffeeServices.getCoffeeData();
        emit(CoffeeGetSuccess(result));
      });
    } catch (e) {
      emit(CoffeeGetFailed(e.toString()));
    }
  }
}
