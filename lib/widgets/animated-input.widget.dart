import 'package:flutter/material.dart';

class AnimatedInput extends StatelessWidget {
  final AnimationController controller;

  final Animation<Color> containerColor;
  final Animation<double> containerOpacityAnim;
  final Animation<double> containerBorderRadiusAnim;

  final Animation<double> containerSizeAnim;

  AnimatedInput({@required this.controller})
      : containerOpacityAnim = Tween(
          begin: 0.0,
          end: 1.0,
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(0.7, 0.9),
          ),
        ),
        containerSizeAnim = Tween(
          begin: 40.0,
          end: 230.0,
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(0.2, 0.3),
          ),
        ),
        containerBorderRadiusAnim = Tween(
          begin: 0.0,
          end: 30.0,
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(0.25, 0.4),
          ),
        ),
        containerColor = ColorTween(
          begin: Colors.white.withOpacity(0),
          end: Colors.black12,
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(
              0.0,
              0.25,
            ),
          ),
        );

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      builder: _animated,
      animation: controller,
    );
  }

  Widget _animated(BuildContext context, child) {
    return Container(
      margin: EdgeInsets.all(5),
      height: 60,
      decoration: BoxDecoration(
        color: containerColor.value,
        borderRadius: BorderRadius.circular(
          containerBorderRadiusAnim.value,
        ),
      ),
      width: containerSizeAnim.value,
      child: Opacity(
        opacity: containerOpacityAnim.value,
        child: Row(
          children: [
            SizedBox(
              width: 20,
            ),
            Icon(Icons.search),
            SizedBox(
              width: 20,
            ),
            Container(
              width: 160,
              child: TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: 'Search...',
                  labelStyle: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.w300,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
