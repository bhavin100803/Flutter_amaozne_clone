import 'package:flutter/cupertino.dart';

class BookModel {
  String image;
  String secondimage;
  String title;
  String subtitle;
  bool favorite;

  BookModel({
    required this.image,
    required this.secondimage,
    required this.title,
    required this.subtitle,
    required this.favorite,
  });

  static BookModel newBook = BookModel(
      image: "assets/image/new_book_1.jpg",
      secondimage: "assets/image/new_book_2.jpg",
      title: "Raft of Start",
      subtitle: "Andrew j.Graff",
      favorite: true);

  static List<BookModel> books = [
    BookModel(
      image: "assets/image/book_1.jpeg",
      secondimage: "assets/image/book_1.jpeg",
      title: "The Martain",
      subtitle: "Andy wire",
      favorite: false,
    ),
    BookModel(
      image: "assets/image/book_2.jpeg",
      secondimage: "assets/image/book_2.jpeg",
      title: "Midnight awr",
      subtitle: "meteo martinize",
      favorite: false,
    ),
    BookModel(
      image: "assets/image/book_3.jpeg",
      secondimage: "assets/image/book_3.jpeg",
      title: "The hypocriate",
      subtitle: "sophiya hills",
      favorite: false,
    ),
    BookModel(
      image: "assets/image/book_4.jpeg",
      secondimage: "assets/image/book_4.jpeg",
      title: "Amer Brave",
      subtitle: " matt zhage",
      favorite: true,
    ),
    BookModel(
      image: "assets/image/book_5.jpeg",
      secondimage: "assets/image/book_5.jpeg",
      title: "harry potter",
      subtitle: "A History of magic",
      favorite: true,
    ),
  ];
}
