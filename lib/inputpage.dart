import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/outputpage.dart';
import 'package:bmi_calculator/calculation.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  //declare a Custom Radio Button
  int currentindex = 0;
  int height = 150;
  int weight = 50;
  int age = 20;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Color(0xff272640),
        appBar: AppBar(
          title: Center(
            child: Text(
              "BMI Calculator",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 28,
              ),
            ),
          ),
          elevation: 0.0,
          backgroundColor: Color(
            0xff00f5d4,
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // new Container(
                //   decoration: new BoxDecoration(
                //     image: new DecorationImage(
                //         image: new AssetImage('lib/assets/fitness.jpg'),
                //         fit: BoxFit.cover),
                //   ),
                // ),
                Row(
                  children: [
                    radioButton("Male", Color(0xff00bbf9), 0,
                        Icon(FontAwesomeIcons.mars)),
                    radioButton("Female", Color(0xfff72585), 1,
                        Icon(FontAwesomeIcons.venus))
                  ],
                ),

                SizedBox(
                  height: 20.0,
                ),
                Container(
                  height: 150,
                  width: 370,
                  decoration: BoxDecoration(
                    color: Color(0xfffec5bb),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Your Height in Centimeter",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 50.0, left: 50.0),
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                    backgroundColor: Color(0xffff8fa3),
                                    child: Icon(
                                      FontAwesomeIcons.minus,
                                      color: Colors.black,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        height--;
                                      });
                                    }),
                                SizedBox(
                                  width: 40,
                                ),
                                Text(
                                  '$height',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 40,
                                ),
                                FloatingActionButton(
                                  backgroundColor: Color(0xff99d98c),
                                  child: Icon(
                                    FontAwesomeIcons.plus,
                                    color: Colors.black,
                                  ),
                                  onPressed: () {
                                    setState(
                                      () {
                                        height++;
                                      },
                                    );
                                  },
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  height: 150,
                  width: 370,
                  decoration: BoxDecoration(
                    color: Color(0xfffbb1bd),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Your Weight in Kilogram",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 50.0, left: 50.0),
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                    backgroundColor: Color(0xffff8fa3),
                                    child: Icon(
                                      FontAwesomeIcons.minus,
                                      color: Colors.black,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        weight--;
                                      });
                                    }),
                                SizedBox(
                                  width: 40,
                                ),
                                Text(
                                  '$weight',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 40,
                                ),
                                FloatingActionButton(
                                  backgroundColor: Color(0xff99d98c),
                                  child: Icon(
                                    FontAwesomeIcons.plus,
                                    color: Colors.black,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 150,
                  width: 370,
                  decoration: BoxDecoration(
                    color: Color(0xfffec5bb),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Your Age in Year",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 50.0, left: 50.0),
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                    backgroundColor: Color(0xffff8fa3),
                                    child: Icon(
                                      FontAwesomeIcons.minus,
                                      color: Colors.black,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        age--;
                                      });
                                    }),
                                SizedBox(
                                  width: 40,
                                ),
                                Text(
                                  '$age',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 40,
                                ),
                                FloatingActionButton(
                                  backgroundColor: Color(0xff99d98c),
                                  child: Icon(
                                    FontAwesomeIcons.plus,
                                    color: Colors.black,
                                  ),
                                  onPressed: () {
                                    setState(
                                      () {
                                        age++;
                                      },
                                    );
                                  },
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                // ignore: deprecated_member_use
                FlatButton(
                  height: 50,
                  minWidth: 200,
                  color: Colors.pinkAccent,
                  onPressed: () {
                    Calculation cal =
                        Calculation(height: height, weight: weight);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => OutputPage(
                          bmiresult: cal.bmiresult(),
                          feedback: cal.feedback(),
                          suggestion: cal.suggestion(),
                        ),
                      ),
                    );
                  },
                  child: Text(
                    "Calculate",
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  splashColor: Colors.teal,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  //declare a function to change index value
  void changeIndex(int index) {
    setState(() {
      currentindex = index;
    });
  }

  //create custome widget
  Widget radioButton(String value, Color color, int index, Icon icon) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 12.0),
        height: 80.0,
        // ignore: deprecated_member_use
        child: FlatButton(
          color: currentindex == index ? color : Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          onPressed: () {
            changeIndex(index);
          },
          child: Text(
            value,
            style: TextStyle(
              color: currentindex == index ? Colors.white : color,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
