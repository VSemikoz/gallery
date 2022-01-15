import 'package:flutter/material.dart';

const double _opacity = 0.3;

class MaterialTapWrapper extends StatelessWidget {
  final Widget child;
  final Function() onPressed;
  final double? width;
  final double? height;

  const MaterialTapWrapper({
    Key? key,
    required this.child,
    required this.onPressed,
    this.width,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: Stack(
        children: [
          SizedBox(
            height: height,
            width: width,
            child: Center(child: child),
          ),
          Positioned.fill(
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                  onTap: () => onPressed(),
                  highlightColor: Colors.white.withOpacity(_opacity),
                  splashColor: Colors.white.withOpacity(_opacity)),
            ),
          ),
        ],
      ),
    );
  }
}
