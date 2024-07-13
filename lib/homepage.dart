import 'package:amazone/home/appbar.dart';
import 'package:amazone/widget/book_list.dart';
import 'package:amazone/widget/fab.dart';
import 'package:amazone/widget/header.dart';
import 'package:amazone/widget/icon_list.dart';
import 'package:amazone/widget/navigation_bar.dart';
import 'package:amazone/widget/new_book.dart';
import 'package:amazone/widget/search_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class homepagewidget extends StatefulWidget {
  const homepagewidget({super.key});

  @override
  State<homepagewidget> createState() => _homepagewidgetState();
}

class _homepagewidgetState extends State<homepagewidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ...buildHeader(),
            buildSearchbar(),
            buildIconList(),
            buildbooklist(),
            BuildNewBook(),
          ],
        ),
      ),
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: BuilsFAB(),
      bottomNavigationBar: buildNavigationBar(),
    );
  }
}
