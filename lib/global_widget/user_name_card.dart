import 'package:flutter/material.dart';
import 'package:netflix_dec/utils/color_constants.dart';
import 'package:netflix_dec/utils/dummy,db.dart';

class UserNameCardWidget extends StatelessWidget {
  const UserNameCardWidget(
      {super.key,
      this.height = 100,
      this.width = 100,
      required this.name,
      required this.imageUrl});
  final double height;
  final double width;
  final String name;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: ColorConstants.mainWhite,
              image: DecorationImage(
                  image: AssetImage(imageUrl), fit: BoxFit.cover)),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          name,
          style: TextStyle(color: ColorConstants.mainWhite),
        )
      ],
    );
  }
}
