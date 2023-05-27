import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';

import '../model/list_model.dart';

class HomeViewModel extends BaseViewModel {
  List<Items> items = <Items>[
    Items(
        mainImage: Image.asset("assets/images/winner1.png"),
        name: "David James"),
    Items(
        mainImage: Image.asset("assets/images/winner2.png"),
        name: "Alena Derlin"),
    Items(
        mainImage: Image.asset("assets/images/winner3.png"),
        name: "Madelyn Dias"),
    Items(
        mainImage: Image.asset("assets/images/winner1.png"),
        name: "David James"),
    Items(
        mainImage: Image.asset("assets/images/winner2.png"),
        name: "Alena Derlin"),
    Items(
        mainImage: Image.asset("assets/images/winner3.png"),
        name: "Madelyn Dias"),
  ];

}
