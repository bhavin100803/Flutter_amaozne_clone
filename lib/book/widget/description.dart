import 'package:amazone/pages/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

List<Widget> buildDescription() => [
      Expanded(
        child: Padding(
          padding: EdgeInsets.all(constants.kpadding),
          child: SingleChildScrollView(
            child: Text(
              "Paragraphs are the building blocks of papers. Many students define paragraphs in terms of length: a paragraph is a group of at least five sentences, a paragraph is half a page long, etc. In reality, though, the unity and coherence of ideas among sentences is what constitutes a paragraph.",
              textAlign: TextAlign.justify,
            ),
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.all(constants.kpadding),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Share"),
            TextButton(
              onPressed: () {},
              child: Text("One Click Purchase"),
              style: TextButton.styleFrom(
                padding: EdgeInsets.symmetric(
                  horizontal: constants.kpadding,
                  vertical: 4.0,
                ),
                minimumSize: Size(5, 5),
                backgroundColor: Colors.deepOrange,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
            ),
          ],
        ),
      )
    ];
