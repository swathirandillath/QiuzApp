import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stacked/stacked.dart';

import '../constants/app-colors.dart';
import 'home_view_model.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(30, 34, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: SvgPicture.asset("assets/images/back-arrow.svg"),
                    ),
                    const Text(
                      "Quiz",
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: "medium",
                      ),
                    )
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 30, bottom: 34),
                  child: Text(
                    "Hello,\nLet’s Start Quiz",
                    style: TextStyle(
                      fontSize: 30,
                      fontFamily: "semibold",
                    ),
                  ),
                ),
                Image.asset("assets/images/banner.png"),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 20.0, bottom: 20, right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Winner's",
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: "semibold",
                        ),
                      ),
                      SvgPicture.asset("assets/images/arrow-right.svg")
                    ],
                  ),
                ),
                SizedBox(
                  height: 100,
                  child: ListView.builder(
                    itemCount: model.items.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      var item = model.items[index];
                      return Padding(
                        padding: const EdgeInsets.only(right: 25.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            item.mainImage,
                            Text(
                              item.name,
                              style: const TextStyle(
                                fontSize: 12,
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 24),
                  child: Text(
                    "Popular Super Quiz",
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: "semibold",
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 30),
                  padding: const EdgeInsets.fromLTRB(20, 18, 14, 0),
                  width: 341,
                  decoration: BoxDecoration(
                      color: Palette.primary,
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.25),
                          blurRadius: 4.0,
                          offset: Offset(0, 1),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Personality Quiz",
                        style: TextStyle(
                          fontFamily: "medium",
                          color: Palette.white,
                          fontSize: 20,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 5.0),
                        child: Text(
                          "This Quiz Starts on",
                          style: TextStyle(
                            color: Palette.white,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 20.0),
                                child: Row(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(right: 10),
                                      width: 40,
                                      height: 50,
                                      decoration: const BoxDecoration(
                                        color: Palette.primary,
                                        boxShadow: [
                                          BoxShadow(
                                            color:
                                                Color.fromRGBO(0, 0, 0, 0.25),
                                            blurRadius: 4.0,
                                            offset: Offset(0, 3),
                                          ),
                                        ],
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: const [
                                          Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 2.0),
                                            child: Text(
                                              "11",
                                              style: TextStyle(
                                                fontSize: 16,
                                                color: Palette.white,
                                                fontFamily: "semibold",
                                              ),
                                            ),
                                          ),
                                          Text(
                                            "Day",
                                            style: TextStyle(
                                              color: Palette.white,
                                              fontSize: 7,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(right: 10),
                                      width: 40,
                                      height: 50,
                                      decoration: const BoxDecoration(
                                        color: Palette.primary,
                                        boxShadow: [
                                          BoxShadow(
                                            color:
                                                Color.fromRGBO(0, 0, 0, 0.25),
                                            blurRadius: 4.0,
                                            offset: Offset(0, 3),
                                          ),
                                        ],
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: const [
                                          Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 2.0),
                                            child: Text(
                                              "01",
                                              style: TextStyle(
                                                fontSize: 16,
                                                color: Palette.white,
                                                fontFamily: "semibold",
                                              ),
                                            ),
                                          ),
                                          Text(
                                            "Month",
                                            style: TextStyle(
                                              fontSize: 7,
                                              color: Palette.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(right: 10),
                                      width: 40,
                                      height: 50,
                                      decoration: const BoxDecoration(
                                        color: Palette.primary,
                                        boxShadow: [
                                          BoxShadow(
                                            color:
                                                Color.fromRGBO(0, 0, 0, 0.25),
                                            blurRadius: 4.0,
                                            offset: Offset(0, 3),
                                          ),
                                        ],
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: const [
                                          Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 2.0),
                                            child: Text(
                                              "23",
                                              style: TextStyle(
                                                fontSize: 16,
                                                color: Palette.white,
                                                fontFamily: "semibold",
                                              ),
                                            ),
                                          ),
                                          Text("Year",
                                              style: TextStyle(
                                                color: Palette.white,
                                                fontSize: 7,
                                              )),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  margin: const EdgeInsets.only(
                                      top: 20, bottom: 14),
                                  width: 130,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: const Color.fromRGBO(0, 0, 0, 0.4),
                                  ),
                                  child: const Center(
                                      child: Text(
                                    "PLAY QUIZ NOW",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Palette.white,
                                    ),
                                  )),
                                ),
                              )
                            ],
                          ),
                          Image.asset("assets/images/personal-img.png"),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: SizedBox(
          height: 50,
          width: 50,
          child: FloatingActionButton(
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(55),
              ),
              child: const Center(
                child: Text(
                  "id",
                  style: TextStyle(
                    fontSize: 26,
                    fontFamily: "semisolid",
                  ),
                ),
              ),
            ),
            onPressed: () {},
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 7.0,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 11.0),
                child: Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    direction: Axis.vertical,
                    children: [
                      Image.asset("assets/images/home.png"),
                      const Text(
                        'Home',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      )
                    ]),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 11, 20, 11),
                child: Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  direction: Axis.vertical,
                  children: [
                    Image.asset("assets/images/graduation.png"),
                    const Text(
                      'My Course',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 11, 0, 11),
                child: Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  direction: Axis.vertical,
                  children: [
                    Image.asset("assets/images/favourite.png"),
                    const Text(
                      'Share',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 11.0),
                child: Wrap(
                  crossAxisAlignment: WrapCrossAlignment.start,
                  direction: Axis.vertical,
                  children: [
                    Image.asset("assets/images/notes.png"),
                    const Text(
                      'Profile',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      viewModelBuilder: () => HomeViewModel(),
    );
  }
}
