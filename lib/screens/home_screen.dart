import 'package:flutter/material.dart';
import 'package:travely_ui/consts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 15,
        selectedItemColor: blackColor,
        unselectedItemColor: greyColor,
        iconSize: 26,
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/icons/home_icon.png"),
            ),
            label: ".",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/icons/explore_icon.png"),
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/icons/bookmark_icon.png"),
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/icons/profile_icon.png"),
            ),
            label: "",
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 20,
            top: 20,
            right: 20,
            bottom: 20,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 280,
                      height: 54,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Search......",
                          hintStyle: searchText,
                          contentPadding:
                              const EdgeInsets.symmetric(vertical: 16),
                          prefixIconConstraints: const BoxConstraints(
                            minHeight: 26,
                            minWidth: 26,
                          ),
                          prefixIcon: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: ImageIcon(
                              const AssetImage("assets/icons/search_icon.png"),
                              color: greyColor,
                            ),
                          ),
                          suffixIconConstraints: const BoxConstraints(
                            minHeight: 26,
                            minWidth: 26,
                          ),
                          suffixIcon: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: ImageIcon(
                              const AssetImage("assets/icons/mic_icon.png"),
                              color: greyColor,
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100),
                            borderSide: BorderSide(color: greyColor),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100),
                            borderSide: BorderSide(color: greyColor),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 54,
                      height: 54,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        image: const DecorationImage(
                          image: AssetImage("assets/images/profilePict.png"),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Text(
                  "Lets go trip with us!",
                  style: mainTitle,
                ),
                const SizedBox(
                  height: 30,
                ),
                Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 210,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                          image: AssetImage("assets/images/image1.png"),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 30,
                      top: 22,
                      right: 30,
                      bottom: 22,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 45,
                                height: 25,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: transparentColor.withOpacity(0.75),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    const Image(
                                      image: AssetImage(
                                        "assets/icons/award_icon.png",
                                      ),
                                      width: 21,
                                    ),
                                    Text(
                                      '1',
                                      style: mainCardText,
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 30,
                                height: 30,
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: transparentColor.withOpacity(0.75),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: const [
                                    Image(
                                      image: AssetImage(
                                        "assets/icons/bookmark_on_icon.png",
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 95,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Kelingkin Beach",
                                style: mainCardText,
                              ),
                              Row(
                                children: [
                                  const Image(
                                    image: AssetImage(
                                        "assets/icons/location_icon.png"),
                                    width: 10,
                                    height: 12,
                                  ),
                                  const SizedBox(
                                    width: 6,
                                  ),
                                  Text(
                                    "Bali Indonesia",
                                    style: subCardText,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  "Categories",
                  style: subTitle,
                ),
                const SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        width: 128,
                        height: 54,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(color: greyColor),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Image(
                              image: AssetImage("assets/icons/beach_icon.png"),
                              width: 30,
                              height: 24,
                            ),
                            Text(
                              "Beach",
                              style: categoriesText,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Container(
                        width: 128,
                        height: 54,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(color: greyColor),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Image(
                              image: AssetImage("assets/icons/forest_icon.png"),
                              width: 30,
                              height: 24,
                            ),
                            Text(
                              "Forest",
                              style: categoriesText,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Container(
                        width: 128,
                        height: 54,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(color: greyColor),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Image(
                              image:
                                  AssetImage("assets/icons/mountain_icon.png"),
                              width: 30,
                              height: 24,
                            ),
                            Text(
                              "Mountain",
                              style: categoriesText,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  "For you",
                  style: subTitle,
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Stack(
                          children: [
                            Container(
                              width: 167,
                              height: 180,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: const DecorationImage(
                                  image: AssetImage("assets/images/image2.png"),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 15,
                              top: 12,
                              right: 15,
                              bottom: 12,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Align(
                                    alignment: Alignment.topRight,
                                    child: Container(
                                      width: 30,
                                      height: 30,
                                      padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        color:
                                            transparentColor.withOpacity(0.75),
                                      ),
                                      child: const Image(
                                        image: AssetImage(
                                          "assets/icons/bookmark_off_icon.png",
                                        ),
                                      ),
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Alimatha Island",
                                        style: subCardText,
                                      ),
                                      Row(
                                        children: [
                                          const Image(
                                            image: AssetImage(
                                                "assets/icons/location_icon.png"),
                                            width: 10,
                                            height: 12,
                                          ),
                                          const SizedBox(
                                            width: 6,
                                          ),
                                          Text(
                                            "Maldives",
                                            style: subCardText.copyWith(
                                                fontSize: 11),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Stack(
                          children: [
                            Container(
                              width: 167,
                              height: 180,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: const DecorationImage(
                                  image: AssetImage("assets/images/image3.png"),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 15,
                              top: 12,
                              right: 15,
                              bottom: 12,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Align(
                                    alignment: Alignment.topRight,
                                    child: Container(
                                      width: 30,
                                      height: 30,
                                      padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                        color:
                                            transparentColor.withOpacity(0.75),
                                      ),
                                      child: const Image(
                                        image: AssetImage(
                                          "assets/icons/bookmark_on_icon.png",
                                        ),
                                      ),
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Peyto Lake",
                                        style: subCardText,
                                      ),
                                      Row(
                                        children: [
                                          const Image(
                                            image: AssetImage(
                                                "assets/icons/location_icon.png"),
                                            width: 10,
                                            height: 12,
                                          ),
                                          const SizedBox(
                                            width: 6,
                                          ),
                                          Text(
                                            "Alberta, Canada",
                                            style: subCardText.copyWith(
                                                fontSize: 11),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
