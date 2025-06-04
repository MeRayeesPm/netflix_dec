import 'package:flutter/material.dart';
import 'package:netflix_dec/global_widget/user_name_card.dart';
import 'package:netflix_dec/utils/color_constants.dart';
import 'package:netflix_dec/utils/dummy,db.dart';
import 'package:netflix_dec/utils/image_constants.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 150,
                child: ListView.separated(
                  itemCount: DummyDb.userNameImages.length + 1,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => index <
                          DummyDb.userNameImages.length
                      ? UserNameCardWidget(
                          name: DummyDb.userNameImages[index]["name"]!,
                          imageUrl: DummyDb.userNameImages[index]["image"]!,
                          height: index == 0 ? 100 : 70,
                          width: index == 0 ? 100 : 70,
                        )
                      : Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 70,
                              width: 70,
                              child: Center(
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              ImageConstants.addButtonImage),
                                          fit: BoxFit.cover)),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Add",
                              style: TextStyle(color: ColorConstants.mainWhite),
                            )
                          ],
                        ),
                  separatorBuilder: (context, index) => SizedBox(
                    width: 5,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 15,
                    width: 15,
                    child: Center(
                      child: Image.asset("assets/bx_bxs-pencil.png"),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Manage Profiles",
                    style: TextStyle(
                        color: ColorConstants.mainWhite,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                color: ColorConstants.mainDarkGrey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 25,
                          width: 25,
                          child: Center(
                            child: Image.asset("assets/Group 71.png"),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Tell friends about Netflix.",
                          style: TextStyle(
                              color: ColorConstants.mainWhite,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ],
                    ),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamus bibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massa",
                      style: TextStyle(
                          color: ColorConstants.mainWhite,
                          fontWeight: FontWeight.w300,
                          fontSize: 12),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Terms & Conditions",
                      style: TextStyle(
                        color: ColorConstants.mainWhiteLite,
                        fontWeight: FontWeight.w300,
                        fontSize: 12,
                        decoration: TextDecoration.underline,
                        decorationColor:
                            ColorConstants.mainWhite.withOpacity(.5),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: SizedBox(
                        height: 50,
                        child: Row(children: [
                          Expanded(
                            child: Container(
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 28),
                            color: ColorConstants.mainWhite,
                            child: Center(
                              child: Text(
                                "Copy Link",
                                style: TextStyle(
                                    color: ColorConstants.mainBlack,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              ),
                            ),
                          ),
                        ]),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: 50,
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              child: Image.asset("assets/WhatsApp.png"),
                            ),
                          ),
                          VerticalDivider(),
                          Expanded(
                            child: Container(
                              child: Image.asset("assets/Facebook.png"),
                            ),
                          ),
                          VerticalDivider(),
                          Expanded(
                            child: Container(
                              child: Image.asset("assets/Gmail.png"),
                            ),
                          ),
                          VerticalDivider(),
                          Expanded(
                            child: Container(
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.more_horiz_rounded,
                                    color: ColorConstants.mainWhite,
                                  ),
                                  Text(
                                    "More",
                                    style: TextStyle(
                                        color: ColorConstants.mainWhite,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 15),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 15,
                    width: 15,
                    child: Center(
                      child: Image.asset("assets/tik.png"),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "My List",
                    style: TextStyle(
                        color: ColorConstants.mainWhite,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                  ),
                ],
              ),
              Divider(
                height: 60,
                color: ColorConstants.mainGrey,
              ),
              Text(
                "App Settings ",
                style: TextStyle(
                    color: ColorConstants.mainWhite,
                    fontWeight: FontWeight.w500,
                    fontSize: 15),
              ),
              Text(
                "Account",
                style: TextStyle(
                    color: ColorConstants.mainWhite,
                    fontWeight: FontWeight.w500,
                    fontSize: 15),
              ),
              Text(
                "Help",
                style: TextStyle(
                    color: ColorConstants.mainWhite,
                    fontWeight: FontWeight.w500,
                    fontSize: 15),
              ),
              Text(
                "Sign Out",
                style: TextStyle(
                    color: ColorConstants.mainWhite,
                    fontWeight: FontWeight.w500,
                    fontSize: 15),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
