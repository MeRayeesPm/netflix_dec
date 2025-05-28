import 'package:flutter/material.dart';
import 'package:netflix_dec/utils/color_constants.dart';
import 'package:netflix_dec/utils/dummy,db.dart';
import 'package:netflix_dec/view/search_screen%20copy/widget/custom_search_screen.dart';

class SearchSreen extends StatefulWidget {
  const SearchSreen({super.key});

  @override
  State<SearchSreen> createState() => _SearchSreenState();
}

class _SearchSreenState extends State<SearchSreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
            height: 80,
            color: ColorConstants.mainGrey,
            child: Row(
              children: [
                Icon(
                  Icons.search_rounded,
                  color: ColorConstants.mainWhite,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Search for a show, movie, genre, e.t.c.",
                  style: TextStyle(
                    color: ColorConstants.mainWhite,
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.mic,
                  color: ColorConstants.mainWhite,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30.0),
            child: Text(
              "Top Searches",
              style: TextStyle(
                  color: ColorConstants.mainWhite,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
          Expanded(
            child: ListView.separated(
              // shrinkWrap: true,
              itemCount: DummyDb.searchScreenDatas.length,
              itemBuilder: (context, index) => CustomSearchSreenCard(
                imageUrl:
                    DummyDb.searchScreenDatas[index]["imageUrl"].toString(),
                title: DummyDb.searchScreenDatas[index]["movieName"].toString(),
              ),
              separatorBuilder: (context, index) => SizedBox(
                height: 5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
