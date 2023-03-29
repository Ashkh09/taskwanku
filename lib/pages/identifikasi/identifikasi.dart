import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:taskwanku/assets.dart';

class Identifikasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 10, 8, 0),
            child: Container(
              width: double.maxFinite,
              height: 70.0,
              decoration: const BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: const Center(
                  child: Text(
                "Identifikasi",
                style: TextStyle(fontSize: 30, color: Colors.orange),
              )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Row(
                  children: [
                    GridItem('assets/Salamander.png', 'Salamander'),
                    GridItem('assets/Salamander.png', 'Salamander'),
                    GridItem('assets/Salamander.png', 'Salamander'),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    GridItem('assets/Salamander.png', 'Salamander'),
                    GridItem('assets/Salamander.png', 'Salamander'),
                    GridItem('assets/Salamander.png', 'Salamander'),
                  ],
                )
              ],
            ),
          ),
        ],
      )),
    );
  }
}

Widget GridItem(String asset, String nama) {
  return Center(
    child: Container(
      margin: EdgeInsets.all(5),
      height: 240,
      width: 113,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white60,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 3,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(children: [
        Container(child: Image(image: AssetImage(asset), fit: BoxFit.cover)),
        Container(
          margin: const EdgeInsets.all(25),
          child: AutoSizeText(
            nama,
            maxLines: 1,
            style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(181, 0, 0, 0)),
          ),
        )
      ]),
    ),
  );
}
