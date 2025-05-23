import 'package:flutter/material.dart';
import 'package:netflix_dec/utils/color_constants.dart';
import 'package:netflix_dec/utils/dummy,db.dart';
import 'package:netflix_dec/utils/image_constants.dart';
import 'package:netflix_dec/view/home_screen/widgets/custom_movie_cards.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 430,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(ImageConstants.homePageImage),
                      fit: BoxFit.cover),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 35, horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(ImageConstants.netflixiconLogo),
                    Text(
                      "Tv Shows",
                      style: TextStyle(
                          color: ColorConstants.mainWhite, fontSize: 17),
                    ),
                    Text(
                      "Movies",
                      style: TextStyle(
                          color: ColorConstants.mainWhite, fontSize: 17),
                    ),
                    Text(
                      "My List",
                      style: TextStyle(
                          color: ColorConstants.mainWhite, fontSize: 17),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                left: 0,
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(ImageConstants.BottomHomePage),
                      SizedBox(
                        width: 10,
                      ),
                      Image.asset(ImageConstants.BottomHomePageRight)
                    ],
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Column(
                children: [
                  Icon(Icons.add, color: ColorConstants.mainWhite),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "My List",
                    style: TextStyle(
                        color: const Color.fromARGB(255, 216, 152, 152)),
                  ),
                ],
              ),
              SizedBox(
                width: 30,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                decoration: BoxDecoration(
                    color: ColorConstants.mainGrey,
                    borderRadius: BorderRadius.circular(6)),
                child: Row(
                  children: [
                    Icon(
                      Icons.play_arrow_sharp,
                      size: 21,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "play",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 30,
              ),
              Column(
                children: [
                  Icon(Icons.info_outline, color: ColorConstants.mainWhite),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Info",
                    style: TextStyle(color: ColorConstants.mainWhite),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          CustomMovieCard(
            height: 100,
            width: 100,
            title: "Preview",
            isCircular: true,
            imagesList: DummyDb.movieImageUrls,
          ),
          CustomMovieCard(
            title: "Continue Watching For",
            imagesList: DummyDb.movieImageUrls,
            isOptionVisble: true,
          ),
          CustomMovieCard(
            height: 251,
            width: 154,
            title: "Continue Watching For",
            imagesList: DummyDb.movieImageUrls,
          ),
          CustomMovieCard(
            title: "Continue Watching For",
            imagesList: DummyDb.movieImageUrls,
          ),
        ],
      ),
    );
  }
}
