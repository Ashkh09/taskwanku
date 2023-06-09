import 'package:flutter/material.dart';
import 'package:taskwanku/assets.dart';

class Pengantar extends StatelessWidget {
  const Pengantar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.orange,
            title: Text("Pengantar"),
            leading: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back,
                  size: 30,
                )),
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(Assets.kataPengantar,
                style: TextStyle(
                  letterSpacing: 1.0,
                  wordSpacing: 2.0,
                )),
          ),
        ));
  }
}
