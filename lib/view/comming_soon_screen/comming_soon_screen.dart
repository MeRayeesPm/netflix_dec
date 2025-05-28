import 'package:flutter/material.dart';
import 'package:netflix_dec/utils/color_constants.dart';
import 'package:netflix_dec/utils/dummy,db.dart';
import 'package:netflix_dec/view/comming_soon_screen/widgets/custom_new_arrival_card.dart';

class CommingSoonScreen extends StatelessWidget {
  const CommingSoonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      appBar: AppBar(
        backgroundColor: ColorConstants.mainBlack,
        leading: Center(
          child: CircleAvatar(
            radius: 15,
            backgroundColor: ColorConstants.mainRed,
            child: Icon(
              Icons.notifications,
              color: ColorConstants.mainWhite,
            ),
          ),
        ),
        title: Text(
          "Notifications",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: ColorConstants.mainWhite),
        ),
      ),
      body: SafeArea(
          child: Column(
        children: [
          Container(
            color: ColorConstants.mainGrey,
            child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: DummyDb.moviesData.length,
              itemBuilder: (context, index) => CustomNewArrivalCard(
                  newArrivals: DummyDb.moviesData, indexvalue: index),
              separatorBuilder: (context, index) => SizedBox(
                height: 10,
              ),
            ),
          )
        ],
      )),
    );
  }
}
