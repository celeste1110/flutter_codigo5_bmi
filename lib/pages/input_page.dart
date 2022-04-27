import 'package:flutter/material.dart';
import 'package:flutter_codigo5_bmi/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const kTabSelectedColor = Color(0xff232f39);
const kCardColor = Color(0xff1F232C);
enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedOption = Gender.male;
  int height=165;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.deepPurple,
        title: Text('BMI Calculator'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    color: selectedOption == Gender.male
                        ? kTabSelectedColor
                        : kCardColor,
                    chilCard: IconContent(
                      icono: FontAwesomeIcons.mars,
                      texto: 'MALE',
                    ),
                    onTab: () {
                      selectedOption = Gender.male;
                      setState(() {});
                    },
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: selectedOption == Gender.female
                        ? kTabSelectedColor
                        : kCardColor,
                    chilCard: IconContent(
                      icono: FontAwesomeIcons.venus,
                      texto: 'FEMALE',
                    ),
                    onTab: () {
                      selectedOption = Gender.female;
                      setState(() {});
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: ReusableCard(
                    color: kCardColor,
                    chilCard: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('HEIGTH'),
                        Slider(
                          value: height.toDouble(),
                          min:0,
                          max:200,
                          onChanged: (double valueSlider){
                            height=valueSlider.round();
                            setState(() {

                            });
                          }
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    color: kCardColor,
                    chilCard: Container(),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: kCardColor,
                    chilCard: Container(),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 80.0,
            width: double.infinity,
            margin: const EdgeInsets.only(top: 12.0),
            color: Colors.lightBlueAccent,
            alignment: Alignment.center,
            child: const Text(
              'CALCULATE',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
