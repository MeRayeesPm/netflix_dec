import 'package:flutter/material.dart';
import 'package:netflix_dec/utils/image_constants.dart';

class DummyDb {
  static List<Map<String, String>> userNameImages = [
    {"image": ImageConstants.userOne, "name": "User one"},
    {"image": ImageConstants.userTwo, "name": "User Two"},
    {"image": ImageConstants.userThree, "name": "User Three"},
    {"image": ImageConstants.KidsProfileImage, "name": "Kids"},
    {"image": ImageConstants.KidsProfileImage, "name": "Kids"},
  ];

  static List<String> movieImageUrls = [
    "https://images.pexels.com/photos/6235464/pexels-photo-6235464.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
    "https://media.istockphoto.com/id/2098254907/photo/young-woman-using-photo-sitting-on-sofa-at-home-stock-photo.jpg?s=2048x2048&w=is&k=20&c=1Z-seXVGDQHZRmgb9Qs4DekJYfwxz2xRC7pDBzqHe2o=",
    "https://media.istockphoto.com/id/1494642262/photo/people-in-the-cinema-auditorium-with-empty-white-screen.jpg?s=2048x2048&w=is&k=20&c=XLSiHIO02doIcuaB8BJMTcoTsyeQtvbngcQlQZLkEW4=",
    "https://images.pexels.com/photos/3131971/pexels-photo-3131971.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
    "https://images.pexels.com/photos/275977/pexels-photo-275977.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
    "https://images.pexels.com/photos/2507025/pexels-photo-2507025.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
    "https://images.pexels.com/photos/2752777/pexels-photo-2752777.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"
  ];

// for search screen top searches list
  static List<Map<String, String>> searchScreenDatas = [
    {
      "imageUrl":
          "https://images.pexels.com/photos/6235464/pexels-photo-6235464.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
      "movieName": "The sjloas Slkaj"
    },
    {
      "imageUrl":
          "https://media.istockphoto.com/id/2098254907/photo/young-woman-using-photo-sitting-on-sofa-at-home-stock-photo.jpg?s=2048x2048&w=is&k=20&c=1Z-seXVGDQHZRmgb9Qs4DekJYfwxz2xRC7pDBzqHe2o=",
      "movieName": "The SGFSG"
    },
    {
      "imageUrl":
          "https://media.istockphoto.com/id/2098254907/photo/young-woman-using-photo-sitting-on-sofa-at-home-stock-photo.jpg?s=2048x2048&w=is&k=20&c=1Z-seXVGDQHZRmgb9Qs4DekJYfwxz2xRC7pDBzqHe2o=",
      "movieName": "The GTNFDD"
    },
    {
      "imageUrl":
          "https://images.pexels.com/photos/3131971/pexels-photo-3131971.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
      "movieName": "The SDNDNSTR"
    },
    {
      "imageUrl":
          "https://images.pexels.com/photos/275977/pexels-photo-275977.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
      "movieName": "The YTMDBCVBFB"
    },
    {
      "imageUrl":
          "https://images.pexels.com/photos/2507025/pexels-photo-2507025.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
      "movieName": "The fdn dfh dfsg"
    },
    {
      "imageUrl":
          "https://images.pexels.com/photos/2752777/pexels-photo-2752777.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
      "movieName": "The ssdfsgsd"
    },
    {
      "imageUrl":
          "https://images.pexels.com/photos/6235464/pexels-photo-6235464.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
      "movieName": "The sjloas Slkaj"
    },
    {
      "imageUrl":
          "https://media.istockphoto.com/id/2098254907/photo/young-woman-using-photo-sitting-on-sofa-at-home-stock-photo.jpg?s=2048x2048&w=is&k=20&c=1Z-seXVGDQHZRmgb9Qs4DekJYfwxz2xRC7pDBzqHe2o=",
      "movieName": "The SGFSG"
    },
    {
      "imageUrl":
          "https://media.istockphoto.com/id/2098254907/photo/young-woman-using-photo-sitting-on-sofa-at-home-stock-photo.jpg?s=2048x2048&w=is&k=20&c=1Z-seXVGDQHZRmgb9Qs4DekJYfwxz2xRC7pDBzqHe2o=",
      "movieName": "The GTNFDD"
    },
    {
      "imageUrl":
          "https://images.pexels.com/photos/3131971/pexels-photo-3131971.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
      "movieName": "The SDNDNSTR"
    },
    {
      "imageUrl":
          "https://images.pexels.com/photos/275977/pexels-photo-275977.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
      "movieName": "The YTMDBCVBFB"
    },
    {
      "imageUrl":
          "https://images.pexels.com/photos/2507025/pexels-photo-2507025.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
      "movieName": "The fdn dfh dfsg"
    },
    {
      "imageUrl":
          "https://images.pexels.com/photos/2752777/pexels-photo-2752777.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
      "movieName": "The ssdfsgsd"
    },
  ];

// comming soon new arrivals data

  static List<Map<String, dynamic>> moviesData = [
    {
      "imageUrl":
          "https://images.pexels.com/photos/32188045/pexels-photo-32188045/free-photo-of-traditional-costume-with-ornate-headdress.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2 ",
      "movieName": "The Social Network",
      "title": "E1 chapo",
      "date": "Jan 6"
    },
    {
      "imageUrl":
          "https://images.pexels.com/photos/32200391/pexels-photo-32200391/free-photo-of-vibrant-fushimi-inari-shrine-fox-statue.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
      "movieName": "Inception",
      "title": "Inception",
      "date": "Feb 14"
    },
  ];

// data for coming soon Movie list
  static List<Map<String, dynamic>> notificationMovieList = [
    {
      "title": "Dune: Part Two",
      "subtitle": "Now Streaming",
      "description":
          "Paul Atreides unites with the Fremen of Arrakis to wage war against House Harkonnen in this epic sequel directed by Denis Villeneuve.",
      "imageUrl":
          "https://images.pexels.com/photos/1649683/pexels-photo-1649683.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
    },
    {
      "title": "Inside Out 2",
      "subtitle": "Available Now",
      "description":
          "Riley navigates her teenage years with new emotions like Anxiety, Envy, and Embarrassment joining the original crew in this Pixar sequel.",
      "imageUrl": "https://image.tmdb.org/t/p/w500/insideout2_poster.jpg",
    },
    {
      "title": "Deadpool & Wolverine",
      "subtitle": "In Theaters",
      "description":
          "Deadpool teams up with a reluctant Wolverine to save his universe from extinction, blending humor and action in this R-rated Marvel adventure.",
      "imageUrl":
          "https://image.tmdb.org/t/p/w500/deadpoolwolverine_poster.jpg",
    },
    {
      "title": "Mission: Impossible – The Final Reckoning",
      "subtitle": "Now Playing",
      "description":
          "Ethan Hunt and his team face their most dangerous mission yet: to track down a terrifying new weapon that threatens all of humanity.",
      "imageUrl":
          "https://image.tmdb.org/t/p/w500/mission_impossible_final_reckoning_poster.jpg",
    },
    {
      "title": "Mickey 17",
      "subtitle": "Sci-Fi Thriller",
      "description":
          "An expendable clone on a colonization mission begins to question his purpose and existence in this adaptation of Edward Ashton's novel.",
      "imageUrl": "https://image.tmdb.org/t/p/w500/mickey17_poster.jpg",
    },
    {
      "title": "Housefull 5",
      "subtitle": "Comedy Thriller",
      "description":
          "The beloved comedy franchise returns with a murder mystery set aboard a cruise ship, adding suspense to its trademark humor.",
      "imageUrl": "https://image.tmdb.org/t/p/w500/housefull5_poster.jpg",
    },
    {
      "title": "Lilo & Stitch",
      "subtitle": "Live-Action Remake",
      "description":
          "Disney's live-action adaptation of the beloved animated film, following the adventures of a young girl and her alien friend.",
      "imageUrl": "https://image.tmdb.org/t/p/w500/lilo_and_stitch_poster.jpg",
    },
    {
      "title": "Sentimental Value",
      "subtitle": "Cannes Favorite",
      "description":
          "A Norwegian drama exploring the complexities of a strained father-daughter relationship, set against the backdrop of their childhood home.",
      "imageUrl":
          "https://image.tmdb.org/t/p/w500/sentimental_value_poster.jpg",
    },
    {
      "title": "Sinners",
      "subtitle": "Supernatural Horror",
      "description":
          "Set in 1932 Mississippi, twin brothers return to their hometown and confront a supernatural evil in this film directed by Ryan Coogler.",
      "imageUrl": "https://image.tmdb.org/t/p/w500/sinners_poster.jpg",
    },
    {
      "title": "Captain America: Brave New World",
      "subtitle": "Marvel's New Era",
      "description":
          "Sam Wilson takes up the mantle of Captain America, facing new challenges and forging a path in a changed world.",
      "imageUrl":
          "https://image.tmdb.org/t/p/w500/captain_america_brave_new_world_poster.jpg",
    },
  ];
}
