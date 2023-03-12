import 'package:day_7/Bmi_result.dart';
import 'package:day_7/result.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  double height = 100;
  double weight = 50;
  double age = 20;

  Widget build(BuildContext context) {
    return
        //theme: ThemeData(
        //  backgroundColor: Color(0xFF10163b),
        //primaryColor:Color(0xFF10163b),
        //
        //
        // ),
        Scaffold(
      backgroundColor: Color(0xFF090c22),
      appBar: AppBar(
        centerTitle: true,
        elevation: 20,
        backgroundColor: Color(0xFF090c22),
        title: Text(
          "BMI CALCULATOR",
          textAlign: TextAlign.center,
        ),
        leading: Icon(Icons.sort),
      ),
      body: Container(
        child: Column(children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xFF262c51),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.male,
                              size: 50,
                              color: Colors.white,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "MALE",
                              style: TextStyle(
                                  fontSize: 20, color: Color(0xFF8C90AA)),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xFF262c51),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.female,
                              size: 50,
                              color: Colors.white,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "FEMALE",
                              style: TextStyle(
                                  fontSize: 20, color: Color(0xFF8C90AA)),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xFF262c51),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "HEIGHT",
                    style: TextStyle(color: Color(0xFF8C90AA), fontSize: 20),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    textBaseline: TextBaseline.alphabetic,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    children: [
                      Text(
                        height.toStringAsFixed(2),
                        style: TextStyle(
                            fontSize: 70,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        " Cm",
                        style:
                            TextStyle(color: Color(0xFF8C90AA), fontSize: 20),
                      ),
                    ],
                  ),
                  //SizedBox(height: 5,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                          activeTrackColor: Colors.white,
                          thumbColor: Color(0xffEB1555),
                          overlayColor: Color(0xffEB1555).withOpacity(0.2),
                          inactiveTrackColor: Color(0xff888993),
                          trackShape: RectangularSliderTrackShape(),
                          trackHeight: 2,
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 13),
                          overlayShape:
                              RoundSliderOverlayShape(overlayRadius: 25)),
                      child: Slider(
                        value: height,
                        //activeColor: Colors.white,
                        max: 200,
                        min: 50,
                        onChanged: (double value) {
                          setState(() {
                            height = value;
                          });
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                    decoration: BoxDecoration(
                        color: Color(0xFF262c51),
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "WEIGHT",
                          style: TextStyle(color: Colors.white),
                        ),
                        //SizedBox(height: 10,),
                        Text(
                          weight.toString(),
                          style: style,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                              backgroundColor: Color(0xFF2f3656),
                              child: Icon(
                                Icons.remove,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              backgroundColor: Color(0xFF2f3656),
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                    decoration: BoxDecoration(
                        color: Color(0xFF262c51),
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'AGE',
                          style: TextStyle(color: Colors.white),
                        ),
                        //SizedBox(height: 10,),
                        Text(
                          "$age",
                          style: style,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                              backgroundColor: Color(0xFF2f3656),
                              child: Icon(
                                Icons.remove,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                              backgroundColor: Color(0xFF2f3656),
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              BMI bmi_class = BMI(weight, height);

              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Result(bmi_class)));
            },
            child: Container(
              height: 80,
              width: double.infinity,
              decoration: BoxDecoration(color: Color(0xffEB1555)),
              child: Center(
                child: Text(
                  "CALCULATE YOUR BMI",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}

final style =
    TextStyle(fontSize: 70, color: Colors.white, fontWeight: FontWeight.bold);
