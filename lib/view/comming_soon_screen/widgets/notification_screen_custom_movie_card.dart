import 'package:flutter/material.dart';
import 'package:netflix_dec/utils/color_constants.dart';

class NotificationScreenCustomMovieCard extends StatelessWidget {
  const NotificationScreenCustomMovieCard({
    super.key,
    required this.imageUrl,
    required this.title,
    this.des,
    required this.subtitle,
  });

  final String imageUrl;
  final String title;
  final String? des;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 193,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(imageUrl), fit: BoxFit.cover)),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Column(
                children: [
                  Icon(
                    Icons.notifications,
                    size: 30,
                    color: ColorConstants.mainWhite,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Reminder",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: ColorConstants.mainWhite,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                children: [
                  Icon(
                    Icons.share,
                    size: 30,
                    color: ColorConstants.mainWhite,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Share",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: ColorConstants.mainWhite,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Season 1 comming jan 24",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                  color: ColorConstants.mainWhite,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: ColorConstants.mainWhite,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                des ?? "",
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                  color: ColorConstants.mainWhite,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Lost In The Jungle",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: ColorConstants.mainWhite,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
