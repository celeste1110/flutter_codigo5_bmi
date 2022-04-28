import 'package:flutter/material.dart';
import 'package:flutter_codigo5_bmi/bmi_brain.dart';
import 'package:flutter_codigo5_bmi/widgets.dart';

class ResultPage extends StatelessWidget {
  int height;
  int weight;

  ResultPage({required this.height,required this.weight});
  BMIBrain? bmibrain;
  @override
  Widget build(BuildContext context) {
    bmibrain=BMIBrain(weight: weight, height: height);
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Results',
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: ReusableCard(
              chilCard: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    bmibrain!.estado(),
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.lightBlue
                    ),
                  ),
                  Text(
                    bmibrain!.calculaterBMI().toStringAsFixed(2),
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 70.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    bmibrain!.mensaje(),
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              color: Color(0xff1F232C),
            ),
          ),
          NavigatorButtom(
            text: 'RE-CALCULATE',
            onTab: (){
              Navigator.pop(context);

            },
          ),
        ],
      ),
    );
  }
}
