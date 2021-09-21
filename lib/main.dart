import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.red,
          onPressed: () {},
          child: Icon(Icons.location_on_outlined),
        ),
        body: SafeArea(
          child: Stack(
            children: [
              Container(
                height: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.blue.shade900,
                      Colors.pink,
                    ],
                  ),
                ),
                child: Opacity(
                  opacity: .5,
                  child: Image.asset(
                    'assets/images/background.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/person.jpg'),
                    ),
                    trailing: BaseText(text: 'C/F'),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Enter City',
                      ),
                    ),
                  ),
                  BaseText(text: 'Damascus, Syria'),
                  BaseText(
                    text: '27',
                    size: 200,
                  ),
                  BaseText(text: 'Rain Shower'),
                  Image.asset('assets/icons/snow.png'),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: BaseText(text: '20 July, Monday'),
                  ),
                  BaseText(text: '11:32 PM'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BaseText extends StatelessWidget {
  final String text;
  final double? size;

  const BaseText({
    Key? key,
    required this.text,
    this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.white,
        fontSize: size,
      ),
    );
  }
}
