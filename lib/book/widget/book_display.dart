
import 'package:amazone/model/book_model.dart';
import 'package:amazone/pages/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List<Widget> buildBookDisplay({required BookModel book})=> [
  Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0)
    ),
    elevation: 4,
    child: ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: Image.asset(book.secondimage,height: 350,fit: BoxFit.cover,),
    ),
  ),
  Padding(padding: const EdgeInsets.all(constants.kpadding),
  child: Text(book.title,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
  )
];