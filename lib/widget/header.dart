import 'package:amazone/pages/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List<Widget> buildHeader() => [
      Padding(
        padding: const EdgeInsets.only(
            left: 2 * constants.kpadding, top: 2 * constants.kpadding),
        child: Text(
          "Bookshelf",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: 2 * constants.kpadding, vertical: 2 * constants.kpadding),
        child: Text(
          "Wel come Flutter Mappers",
          style: TextStyle(color: Colors.black54),
        ),
      ),
    ];
