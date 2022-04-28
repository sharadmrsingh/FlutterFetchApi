import 'package:flutter/material.dart';

class CardName extends StatefulWidget {
  const CardName({Key? key}) : super(key: key);

  @override
  _CardNameState createState() => _CardNameState();
}

class _CardNameState extends State<CardName> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(30),
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.red),
          height: 100,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('Animesh singh'),
                      SizedBox(
                        height: 5,
                      ),
                      Text('Animesh singh'),
                      SizedBox(
                        height: 5,
                      ),
                      Text('Animesh singh'),
                    ],
                  ),

                  // ClipRRect(child:)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
