import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random = Random();
  int x = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'Lottery App',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Rubik-Regular',
                fontSize: 40,
                fontWeight: FontWeight.w900,
                letterSpacing: 3,
              ),
            ),
          ),
          backgroundColor: Colors.blue,
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  'Lottery wining number is 4 .',
                  style: TextStyle(
                    fontFamily: 'Borel-Regular',
                    fontWeight: FontWeight.w900,
                    fontSize: 20,
                    letterSpacing: 2,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: x == 4 ? 600 : 250,
                width: 300,
                decoration: BoxDecoration(
                  color: x == 4
                      ? Colors.teal.withOpacity(.5)
                      : Colors.grey.withOpacity(.2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: x == 4
                      ? Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.done_all,
                              color: Colors.green,
                              size: 25,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              'Congratulation, \n You have won the Lottery, Your \nNumber is $x .\n',
                              style: TextStyle(
                                fontFamily: 'PTSerif-Italic',
                                fontSize: 20,
                                fontWeight: FontWeight.w900,
                                letterSpacing: 2,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        )
                      : Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.error,
                              color: Colors.red,
                              size: 25,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              'Better Luck next time. \nYour Number is $x . \nTry Again,',
                              style: TextStyle(
                                fontFamily: 'Pacifico-Regular',
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                                letterSpacing: 2,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print(random.nextInt(10).toString());
            x = random.nextInt(6);
            print(x);
            setState(() {});
          },
          backgroundColor: Colors.blue,
          child: Icon(
            Icons.refresh,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
