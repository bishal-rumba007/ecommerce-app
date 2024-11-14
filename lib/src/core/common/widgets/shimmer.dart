import 'package:flutter/material.dart';

class Shimmer extends StatefulWidget {
  final double? width;
  final double? height;
  final double borderRadius;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;

  const Shimmer({
    super.key,
    this.width,
    this.height,
    this.margin,
    this.padding,
    this.borderRadius = 0.0,
  });

  @override
  State<Shimmer> createState() => ShimmerState();
}

class ShimmerState extends State<Shimmer> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _gradientPosition;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 1500),
      vsync: this,
    )..repeat();
    _gradientPosition =
        Tween<double>(begin: -1.0, end: 2.0).animate(_controller);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) => Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(widget.borderRadius),
          gradient: LinearGradient(
            colors: [
              Colors.grey.shade200,
              Colors.grey.shade50,
              Colors.grey.shade200,
            ],
            stops: const [0.0, 0.5, 1.0],
            begin: FractionalOffset(_gradientPosition.value, 0.0),
            end: FractionalOffset(2.0 + _gradientPosition.value, 0.0),
          ),
        ),
        child: Container(
          margin: widget.margin,
          padding: widget.padding,
          height: widget.height,
          width: widget.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(widget.borderRadius),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  // double gradientTranslation(double begin, double end) {
  //   return (begin + (end - begin) * _gradientPosition.value + 1.0) /
  //       3.0 *
  //       widget.width;
  // }
}
