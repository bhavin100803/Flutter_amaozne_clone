import 'package:amazone/model/icon_model.dart';
import 'package:amazone/pages/constants.dart';
import 'package:flutter/cupertino.dart';

final List<IconModel> headerImages = IconModel.icons;

Widget buildIconList()=> Padding(padding: const EdgeInsets.only(bottom: constants.kpadding),
child: SingleChildScrollView(
  scrollDirection: Axis.horizontal,
  child: Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children:
      List.generate(
        headerImages.length,
            (index) => Container(
              width: 100,
              child: Column(
                children: [
                  Image.asset(headerImages[index].icon,height: 50,width: 50,),
                  Text(headerImages[index].title,textAlign: TextAlign.center,)
                ],
              ),
            ),
      ),
  ),
),
);