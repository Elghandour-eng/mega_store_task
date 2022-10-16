
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mega_store_task/features/account_view/account_view_form.dart';
import 'package:mega_store_task/features/home_navigator/bloc/states.dart';
import 'package:mega_store_task/features/home_view/home_view_form.dart';

import '../../categories_view/categories_view_form.dart';
import '../../favourites_view/favourites_view_form.dart';


class HomeCubit extends Cubit<HomeStates> {
  HomeCubit() : super(HomeLayoutLoading());

  static HomeCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  List<Widget> bottomScreens = [
    const HomeViewForm(),
    const AccountViewForm(),
    const CategoriesViewForm(),
    const FavouritesViewForm(),
  ];

  void changeBottom(int index) {
    currentIndex = index;
    debugPrint(index.toString());
    emit(ChangeBottomNavState());
  }
}
