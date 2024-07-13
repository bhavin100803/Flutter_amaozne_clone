import 'package:amazone/model/book_model.dart';
import 'package:amazone/pages/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../book/book_page.dart';


import 'book_list.dart';

class BuildNewBook extends StatelessWidget {
  BuildNewBook({super.key});

  final newBook = BookModel.newBook;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 2 * constants.kpadding,
            vertical: constants.kpadding,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Hot New releses",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              Icon(Icons.keyboard_arrow_right)
            ],
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => BookPage(
                    book: newBook,
                  )),
            );
          },
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: constants.kpadding),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  elevation: 4,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.asset(
                      newBook.image,
                      height: 180,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 2 * constants.kpadding),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          newBook.title,
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                        Text(
                          newBook.title,
                          style:
                              TextStyle(fontSize: 10, color: Colors.blueGrey),
                          textAlign: TextAlign.left,
                        )
                      ],
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text("4.8",),
                          style: TextButton.styleFrom(
                           padding: const EdgeInsets.symmetric(vertical: 2.0,horizontal: constants.kpadding),
                            backgroundColor: Colors.deepOrange,
                            minimumSize: Size(5,5),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0),)
                          ),
                    )
                  ],
                ),
              ),
              // Container(
              //   width: 120,
              //   child: Text(newBook.title),
              // ),
              // Container(
              //   width: 120,
              //   child: Text(
              //     newBook.subtitle,
              //     style: TextStyle(fontSize: 10, color: Colors.blueGrey),
              //   ),
              // )
            ],
          ),
        ),
         SizedBox(height: MediaQuery.of(context).padding.bottom,),
      ],
    );
  }
}
