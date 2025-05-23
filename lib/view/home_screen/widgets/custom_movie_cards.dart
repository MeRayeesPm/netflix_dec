import 'package:flutter/material.dart';
import 'package:netflix_dec/utils/color_constants.dart';

class CustomMovieCard extends StatelessWidget {
  const CustomMovieCard(
      {super.key,
      required this.title,
      this.height = 200,
      this.weight = 100,
      this.isCircular = false,
      required this.imagesList});
  final String title;
  final double height;
  final double weight;
  final bool isCircular;
  final List<String> imagesList;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                color: ColorConstants.mainWhite,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            SizedBox(
              height: height,
              child: ListView.builder(
                  itemCount: imagesList.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              shape: isCircular == true
                                  ? BoxShape.circle
                                  : BoxShape.rectangle,
                              color: ColorConstants.mainRed,
                              image: DecorationImage(
                                  image: NetworkImage(imagesList[index]),
                                  fit: BoxFit.cover)),
                          height: height,
                          width: weight,
                        ),
                      )),
            )
          ],
        ),
      ),
    );
  }
}
