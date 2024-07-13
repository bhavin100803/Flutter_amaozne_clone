import 'package:amazone/book/widget/book_display.dart';
import 'package:amazone/book/widget/description.dart';
import 'package:amazone/model/book_model.dart';
import 'package:amazone/pages/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookPage extends StatefulWidget {
  const BookPage({super.key, required this.book});

  final BookModel book;

  @override
  State<BookPage> createState() => _BookPageState();
}

class _BookPageState extends State<BookPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.keyboard_arrow_left_outlined,
            color: Colors.black87,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(constants.kpadding),
            child: IconButton(
              onPressed: () {
                setState(() {
                  widget.book.favorite = !widget.book.favorite;
                });
              },
              icon: Icon(
                widget.book.favorite ? Icons.favorite : Icons.favorite_border,
                color: Colors.red,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height*2,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              ...buildBookDisplay(book: widget.book),
              ...buildDescription()
            ],
          ),
        ),
      ),
    );
  }
}
