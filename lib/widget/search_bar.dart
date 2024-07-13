

import 'package:amazone/pages/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget buildSearchbar() => Padding(padding: const EdgeInsets.all(2*constants.kpadding),
child: TextField(
  decoration: InputDecoration(
    hintText: ('Search a book'),
        fillColor: Colors.black.withOpacity(0.1),
    filled: true,
    prefixIcon: Icon(Icons.search),
    contentPadding: const EdgeInsets.symmetric(vertical: 0.0,horizontal: constants.kpadding),
    border:OutlineInputBorder(
      borderRadius: BorderRadius.circular(21.0),
      borderSide: BorderSide.none,
    )
  ),
),
);