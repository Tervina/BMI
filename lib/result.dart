import 'package:day_7/Bmi_result.dart';
import 'package:day_7/main.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  BMI bmi;

  Result(this.bmi);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF090c22),
        appBar: AppBar(
          elevation: 20,
          centerTitle: true,
          backgroundColor: Color(0xFF090c22),
          title: Text(
            "BMI CALCULATOR",
            textAlign: TextAlign.center,
          ),
          leading: Icon(Icons.sort),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 20),
              child: Text(
                "Your Result ",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(color: Color(0xFF1d1f33)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        bmi.type(),
                        style: TextStyle(color: Colors.green, fontSize: 50),
                      ),
                      Text(
                        bmi.getResult().toStringAsFixed(2),
                        style: style,
                      ),
                      Text(
                        bmi.advice(),
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      )
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
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
          ],
        ));
  }
}
