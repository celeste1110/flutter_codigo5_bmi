import 'package:flutter/material.dart';
import 'package:flutter_codigo5_bmi/pages/input_page.dart';
import 'package:flutter_codigo5_bmi/pages/result_pages.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:'BMI CALCULATOR',
      theme: ThemeData.dark().copyWith(
        appBarTheme: const AppBarTheme(
          backgroundColor:Color(0xff13191B),
        ),
        scaffoldBackgroundColor: Color(0xff13191B),
        sliderTheme: SliderThemeData(
          activeTrackColor:Colors.pinkAccent ,
          thumbColor: Colors.pinkAccent,
          inactiveTrackColor: Colors.white38,
          overlayColor: Colors.pinkAccent.withOpacity(0.25),
          // overlayShape: RoundSliderThumbShape(
          //   enabledThumbRadius: 15.0,
          // ),
          thumbShape: const RoundSliderThumbShape(
            enabledThumbRadius: 12,
          ),
        ),
      ),
      home: InputPage(),
    );
  }
}

