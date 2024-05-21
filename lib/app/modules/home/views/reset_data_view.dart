import 'package:flutter/material.dart';

import 'package:get/get.dart';

class ResetDataView extends GetView {
  final void Function()? onTap;
  const ResetDataView({
    Key? key,
    required this.onTap,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          padding: EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
            color: Colors.indigo,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.refresh,
                color: Colors.white,
              ),
              SizedBox(width: 20),
              Text(
                "Reset Data Keuangan",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ],
          )),
    );
  }
}
