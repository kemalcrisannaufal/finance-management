import 'package:flutter/material.dart';

import 'package:get/get.dart';

class MenuView extends GetView {
  final name;
  final IconData iconData;
  final Function() onTap;

  const MenuView({
    required this.name,
    required this.iconData,
    required this.onTap,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(right: 15),
        padding: EdgeInsets.all(10),
        width: 150,
        decoration: BoxDecoration(
          color: Colors.blueAccent,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(
                iconData,
                color: Colors.blue,
              ),
            ),
            SizedBox(width: 10),
            Text(name,
                style: TextStyle(
                  color: Colors.white,
                )),
          ],
        ),
      ),
    );
  }
}
