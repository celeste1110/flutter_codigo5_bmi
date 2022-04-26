import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ReusableCard extends StatelessWidget {
  Widget chilCard;
  Color color;
  Function? onTab;
  ReusableCard({required this.chilCard, required this.color, this.onTab});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTab != null
          ? () {
              onTab!();
            }
          : null,
      child: Container(
        margin: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: chilCard,
      ),
    );
  }
}

class IconContent extends StatelessWidget {
  String texto;
  IconData icono;
  IconContent({
    required this.icono,
    required this.texto,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        //Icon(Icons.male),
        FaIcon(
          icono,
          size: 50.0,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          texto,
          style: TextStyle(fontSize: 22.0),
        ),
      ],
    );
  }
}
