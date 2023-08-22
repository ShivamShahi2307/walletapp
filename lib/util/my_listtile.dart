import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  final String iconImagePath;
  final String tileTitle;
  final String tileSubTitle;
  const MyListTile({
    Key? key,
    required this.iconImagePath,
    required this.tileSubTitle,
    required this.tileTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(10)),
          height: 60,
          child: Image.asset(iconImagePath),
        ),
        SizedBox(
          width: 15,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              tileTitle,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              tileSubTitle,
              style: TextStyle(fontSize: 15),
            ),
          ],
        ),
        SizedBox(
          width: 55,
        ),
        Icon(Icons.arrow_forward_ios)
      ],
    );
  }
}
