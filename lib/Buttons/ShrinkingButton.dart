import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:drivhuset/main.dart';

class ShrinkingButton extends StatefulWidget {
  final String buttonText;
  final ButtonStyle buttonStyle;
  final Function onTap;
  final Duration buttonDuration;

  ShrinkingButton(
      {this.buttonText, this.buttonStyle, this.onTap, this.buttonDuration});

  @override
  _ShrinkingButtonState createState() => _ShrinkingButtonState();
}

class _ShrinkingButtonState extends State<ShrinkingButton>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  double _scale;
  Duration _duration;

  @override
  void initState() {
    super.initState();
    _duration = Duration(milliseconds: (widget.buttonDuration.inMilliseconds));
    _controller = AnimationController(
      vsync: this,
      duration: widget.buttonDuration,
      lowerBound: 0.0,
      upperBound: 0.3,
    )..addStatusListener((currentStatus) {
        if (currentStatus == AnimationStatus.forward) {
          return widget.onTap();
        }
      });
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    _scale = 1 - _controller.value;
    return GestureDetector(
      onTapDown: _onTapDown,
      //onTap: _onTap,
      onTapUp: _onTapUp,
      child: Transform.scale(
        scale: _scale,
        child: _animatedContainerUI,
      ),
    );
  }

  Widget get _animatedContainerUI => Container(
        height: 40,
        width: 200,
        //color: Colors.teal,
        decoration: BoxDecoration(
          //borderRadius: BorderRadius.circular(100),
          borderRadius: widget.buttonStyle.borderRadius,
          color: widget.buttonStyle.primaryColor,
          boxShadow: [
            BoxShadow(
              color: Color(0x80000000),
              blurRadius: 30.0,
              offset: Offset(0.0, 30.0),
            ),
          ],
          border: Border.all(
            color: Colors.transparent,
          ),
        ),
        child: Center(
          child: Text(
            widget.buttonText,
            style: widget.buttonStyle.textStyle,
          ),
        ),
      );

  void _onTapDown(TapDownDetails details) {
    _controller.forward();
  }

  _onTap(TapGestureRecognizer details) {
    _controller.forward();
  }

  void _onTapUp(TapUpDetails details) {
    _controller.reverse();
  }
}

class ButtonStyle {
  final BorderRadius borderRadius;
  final TextStyle textStyle;
  final Color primaryColor;
  final double elevation;

  ButtonStyle(
      {this.textStyle, this.primaryColor, this.borderRadius, this.elevation});
}
/*
class NavigatorRouteNamne extends StatelessWidget {

  List<Widget> NavigatorRoute = [
      '/tillhemskärm': (context) => MyHomePage(),
      '/tillintroskärm': (context) => WelcomeScreen(),
      '/tillinlogg': (context) => LoginPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

 */
