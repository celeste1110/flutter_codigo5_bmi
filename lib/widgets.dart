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

class InputIconButton extends StatelessWidget {
IconData icon;
Function onPressed;
InputIconButton({required this.icon,required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return  RawMaterialButton(
      shape: CircleBorder(),
      fillColor: Colors.pinkAccent.withOpacity(0.7),
      constraints: BoxConstraints.tightFor(width: 45,height: 45),
      child: FaIcon(icon),
      onPressed: (){
        onPressed();

      },
    );
  }
}

class NavigatorButtom extends StatelessWidget {

  String text;
  Function onTab;
  NavigatorButtom({required this.text, required this.onTab});

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: (){
        onTab();
      },
      child: Container(
        height: 80.0,
        width: double.infinity,
        margin: const EdgeInsets.only(top: 12.0),
        color: Colors.pink,
        alignment: Alignment.center,
        child:  Text(
          text,
          style: const TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}


