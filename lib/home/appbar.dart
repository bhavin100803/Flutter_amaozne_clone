import 'package:amazone/pages/constants.dart';
import 'package:flutter/material.dart';

AppBar buildAppBar() => AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: false,
      title: Image.asset(
        height: 200,
        width: 150,
        "assets/image/ama.png",
      ),
      actions: [Padding(padding: const EdgeInsets.all(constants.kpadding),
      child: CircleAvatar(backgroundImage: AssetImage("assets/image/profile.jpeg"),),
      )],
    );
