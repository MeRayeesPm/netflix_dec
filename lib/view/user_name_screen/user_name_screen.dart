import 'package:flutter/material.dart';
import 'package:netflix_dec/utils/color_constants.dart';
import 'package:netflix_dec/utils/database.dart';
import 'package:netflix_dec/utils/image_constants.dart';

class UserNameScreen extends StatelessWidget {
  const UserNameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      appBar: AppBar(
        title: SizedBox(
          width: 138,
          height: 28,
          child: Image.asset(ImageConstants.netflixPrimaryLogo),
        ),
        backgroundColor: ColorConstants.mainBlack,
        centerTitle: true,
        actions: [
          SizedBox(
            height: 34,
            width: 34,
            child: Image.asset("assets/bx_bxs-pencil.png"),
          ),
          SizedBox(
            height: 15,
          )
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 80),
          child: GridView.builder(
            shrinkWrap: true,
            itemCount: DbData.userNameImages.length + 1,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
            ),
            itemBuilder: (context, index) => index <
                    DbData.userNameImages.length
                ? InkWell(
                    onTap: () {},
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: ColorConstants.mainWhite,
                              image: DecorationImage(
                                  image: AssetImage(
                                      DbData.userNameImages[index]["image"]!),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          DbData.userNameImages[index]["name"]!,
                          style: TextStyle(color: ColorConstants.mainWhite),
                        )
                      ],
                    ),
                  )
                : Column(
                    children: [
                      SizedBox(
                        height: 100,
                        width: 100,
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
          ),
        ),
      ),
    );
  }
}
