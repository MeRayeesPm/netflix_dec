import 'package:flutter/material.dart';
import 'package:netflix_dec/utils/color_constants.dart';

class DownloadScreen extends StatelessWidget {
  const DownloadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Smart Downloads",
                style: TextStyle(
                  color: ColorConstants.mainWhite,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Introducing Downloads for you",
                style: TextStyle(
                    color: ColorConstants.mainWhite,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "sadhkjah fsdajhkjsh sfadhhkj fkjdghkhg howehi tuiheg reibg ierbfg hvib v iwergbibviev gifbbhfhhb lkjdslkgjslgj sdjlokgjoierj dfsg jojolk sgjlkjglk ajogaij aosjg oasjgfosaj dogsjgodas osagojajo ajoajog aoajoaj fjasogjoasgj aerojorej oroeraojr gore aeroj o",
                style: TextStyle(
                  color: ColorConstants.mainWhite,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: CircleAvatar(
                  radius: 90,
                  backgroundColor: ColorConstants.mainGrey,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 12),
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: ColorConstants.mainBlue),
                child: Center(
                  child: Text(
                    "SETUP",
                    style: TextStyle(color: ColorConstants.mainWhite),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: ColorConstants.mainGrey),
                  child: Text(
                    "Find Something to Dowdnload",
                    style: TextStyle(color: ColorConstants.mainWhite),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
