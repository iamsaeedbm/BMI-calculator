import 'package:bmi_app/widgets/shape_left.dart';
import 'package:bmi_app/widgets/shape_right.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var weightController = TextEditingController();
  var heightController = TextEditingController();
  double resultBMI = 0;
  String resultText = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          'BMI',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 200.0,
                    child: TextField(
                      controller: weightController,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Your Weight ?',
                        hintStyle:
                            TextStyle(color: Colors.orange.withOpacity(0.5)),
                      ),
                    ),
                  ),
                  Container(
                    width: 200.0,
                    child: TextField(
                      controller: heightController,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Your Height ?',
                        hintStyle:
                            TextStyle(color: Colors.orange.withOpacity(0.5)),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Container(
                child: InkWell(
                  onTap: () {
                    var weight = double.parse(weightController.text);
                    var height = double.parse(heightController.text);
                    setState(() {
                      resultBMI = weight / (height * height);
                      if (resultBMI > 25) {
                        resultText = 'dont overeat';
                      } else if (resultBMI >= 18.5 && resultBMI <= 25) {
                        resultText = 'you are sooooober';
                      } else {
                        resultText = 'eat somthing';
                      }
                    });
                  },
                  child: Text(
                    'Calculate',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Text(
                '${resultBMI.toStringAsFixed(2)} ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              SizedBox(height: 30),
              Text(
                '${resultText}',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              SizedBox(height: 60.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  LeftShape(shapeWidth: 200.0),
                  RightShape(shapeWidht: 100.0),
                ],
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  LeftShape(shapeWidth: 150.0),
                  RightShape(shapeWidht: 150.0),
                ],
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  LeftShape(shapeWidth: 100.0),
                  RightShape(shapeWidht: 200.0),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
