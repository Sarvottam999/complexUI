import 'package:flutter/material.dart';

void main() {
  runApp(CalculatorApp());
}

class CalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AnimationPage(),
    );
  }
} 


class AnimationPage extends StatefulWidget {
  AnimationPage({Key? key}) : super(key: key);
  @override
  _AnimationPageState createState() => _AnimationPageState();
}

class _AnimationPageState extends State<AnimationPage> {
 

  @override
  Widget build(BuildContext context) {
    final double height =300;
    return Scaffold(
      body:    Container(
        color: Color.fromARGB(255, 0, 0, 0),
        child: ClipPath(
                  clipper: BezierClipper(1),
                  child: Container(
        
                    decoration: const BoxDecoration(
                    color: Color(0xffFDC700)
                    ),
                    
                    height: MediaQuery .of(context).size.height,
                    width: MediaQuery .of(context).size.width,
                  ),
                ),
      ),
    );
  }
}

class BezierClipper extends CustomClipper<Path>{

  final int state;
  BezierClipper(this.state);

 @override
  Path getClip(Size size) {
    Path path = Path();
    final double _xScaling = size.width / 414;
    final double _yScaling = size.height / 896;
    path.lineTo(207.296 * _xScaling,273.219 * _yScaling);
    path.cubicTo(130.799 * _xScaling,148.099 * _yScaling,86.0979 * _xScaling,133.786 * _yScaling,1 * _xScaling,273.219 * _yScaling,);
    path.cubicTo(1 * _xScaling,273.219 * _yScaling,1 * _xScaling,1 * _yScaling,1 * _xScaling,1 * _yScaling,);
    path.cubicTo(1 * _xScaling,1 * _yScaling,482 * _xScaling,1 * _yScaling,482 * _xScaling,1 * _yScaling,);
    path.cubicTo(482 * _xScaling,1 * _yScaling,482 * _xScaling,273.219 * _yScaling,482 * _xScaling,273.219 * _yScaling,);
    path.cubicTo(421.056 * _xScaling,273.219 * _yScaling,375.111 * _xScaling,90.4247 * _yScaling,325.942 * _xScaling,273.219 * _yScaling,);
    path.cubicTo(276.773 * _xScaling,456.014 * _yScaling,261.186 * _xScaling,371.795 * _yScaling,207.296 * _xScaling,273.219 * _yScaling,);
    path.cubicTo(207.296 * _xScaling,273.219 * _yScaling,207.296 * _xScaling,273.219 * _yScaling,207.296 * _xScaling,273.219 * _yScaling,);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true; 
}
