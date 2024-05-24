import 'package:flutter/material.dart';

import 'package:get/get.dart';

class TransactionListView extends GetView {
  final String kategori;
  final String harga;
  final String deskripsi;

  const TransactionListView({
    required this.kategori,
    required this.harga,
    required this.deskripsi,
  });

  @override
  Widget build(BuildContext context) {
    var icon;
    var color;
    if (kategori == "Makanan") {
      icon = Icons.fastfood;
      color = Colors.red;
    } else if (kategori == "Transportasi") {
      icon = Icons.directions_car;
      color = Colors.green;
    } else if (kategori == "Kuliah") {
      icon = Icons.book;
      color = Colors.blue;
    } else if (kategori == "Tagihan") {
      icon = Icons.account_balance;
      color = Colors.purple;
    } else {
      icon = Icons.eco;
      color = Colors.orange;
    }

    return Container(
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Colors.blue),
      ),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: 15),
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Icon(
              icon,
              color: Colors.white,
            ),
          ),
          Container(
            child: Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        kategori,
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87),
                      ),
                      Text(
                        "Rp. " + harga,
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54),
                      ),
                    ],
                  ),
                  Text(
                    deskripsi,
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
