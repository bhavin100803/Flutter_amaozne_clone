import 'dart:ui';

import 'package:amazone/pages/constants.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BuilsFAB extends StatefulWidget {
  const BuilsFAB({super.key});

  @override
  State<BuilsFAB> createState() => _BuilsFABState();
}

class _BuilsFABState extends State<BuilsFAB> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        showModalBottomSheet(
          context: context,
          builder: (context) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 40.0,
                  ),
                  Text(
                    "Shop by",
                    style: TextStyle(color: Colors.black54),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Category",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                      Icon(
                        Icons.search,
                        color: Colors.deepOrange,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: constants.kpadding,
                  ),
                  _buildCategory(category: "Books", iconData: Icons.book, color: Colors.blue),
                  _buildCategory(category: "Video game", iconData: Icons.sports_esports, color: Colors.deepOrange),
                  _buildCategory(category: "movie", iconData: Icons.movie, color: Colors.blue),
                  _buildCategory(category: "grocery", iconData: Icons.local_grocery_store, color: Colors.cyan),
                  _buildCategory(category: "health", iconData: Icons.healing, color: Colors.yellow.shade700),
                  _buildCategory(category: "Sports", iconData: Icons.shopping_basket_rounded, color: Colors.red),
                  SizedBox(height: 40.0,),
                ],
              ),
            ),
          ),
        );
      },
      backgroundColor: Colors.white,
      child: Icon(
        Icons.list_alt_rounded,
        color: Colors.blue,
      ),
    );
  }

  Widget _buildCategory(
      {required String category,
      required IconData iconData,
      required Color color}) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: constants.kpadding),
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(25),
        child: Container(
          width: double.infinity,
          child: Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: 2 * constants.kpadding,
            children: [
              CircleAvatar(
                backgroundColor: color,
                child: Icon(
                  iconData,
                  color: Colors.white,
                ),
              ),
              Text(
                category,
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
              )
            ],
          ),
        ),
      ),
    );
  }
}
