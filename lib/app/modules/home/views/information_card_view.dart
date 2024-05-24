import 'package:flutter/material.dart';

import 'package:get/get.dart';

class InformationCardView extends GetView {
  final int pendapatan;
  final int pengeluaran;

  const InformationCardView({
    required this.pendapatan,
    required this.pengeluaran,
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var titleTextStyle = TextStyle(
      color: Colors.white,
      fontSize: 17,
      fontWeight: FontWeight.bold,
    );
    var subtitleTextStyle = TextStyle(
      color: Colors.white,
    );
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 26, 132, 219),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Text(
              "Data Keuangan Anda",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.credit_card,
                    color: Colors.white,
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Pengeluaran',
                        style: titleTextStyle,
                      ),
                      Text(
                        'IDR ' + pengeluaran.toString(),
                        style: subtitleTextStyle,
                      ),
                    ],
                  )
                ],
              ),
              Column(),
              Row(
                children: [
                  Icon(
                    Icons.account_balance_wallet_outlined,
                    color: Colors.white,
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Pendapatan',
                        style: titleTextStyle,
                      ),
                      Text(
                        'IDR ' + pendapatan.toString(),
                        style: subtitleTextStyle,
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
