import 'package:flutter/material.dart';
import 'package:flutter_codigo5_bmi/pages/result_pages.dart';
import 'package:flutter_codigo5_bmi/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const kTabSelectedColor = Colors.pinkAccent;
const kCardColor = Color(0xff1F232C);
enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedOption = Gender.male;
  int height = 165;
  int weight = 40;
  int age = 27;

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
                        Text(
                          'HEIGTH',
                          style: TextStyle(
                            fontSize: 18.0,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              height.toString(),
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 35.0,
                              ),
                            ),
                            Text(
                              " cm",
                            ),
                          ],
                        ),
                        Slider(
                            value: height.toDouble(),
                            min: 0,
                            max: 200,
                            onChanged: (double valueSlider) {
                              height = valueSlider.round();
                              setState(() {});
                            }),
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
                    chilCard: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'WEIGHT',
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                        Text(
                          weight.toString(),
                          style: TextStyle(
                            fontSize: 40.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InputIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                weight--;
                                setState(() {});
                              },
                            ),
                            const SizedBox(
                              width: 20.0,
                            ),
                            InputIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                weight++;
                                setState(() {});
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: kCardColor,
                    chilCard: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'AGE',
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                        Text(
                          age.toString(),
                          style: TextStyle(
                            fontSize: 40.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InputIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                age--;
                                setState(() {});
                              },
                            ),
                            const SizedBox(
                              width: 20.0,
                            ),
                            InputIconButton(
                              icon: FontAwesomeIcons.plus,
                              onPressed: () {
                                age++;
                                setState(() {});
                              },
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
          NavigatorButtom(
            text: 'CALCULATE',
            onTab: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ResultPage()));
            },
          ),
        ],
      ),
    );
  }
}
