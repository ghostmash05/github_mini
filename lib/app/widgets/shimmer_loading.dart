import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerLoading extends StatelessWidget {
  final double height;
  final double width;
  final bool isCircular;
  final double borderRadius;
  final Color baseColor;
  final Color highlightColor;
  
  const ShimmerLoading({
    Key? key,
    required this.height,
    required this.width,
    this.isCircular = false,
    this.borderRadius = 8,
    this.baseColor = const Color(0xFF2D333B),
    this.highlightColor = const Color(0xFF22272E),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: baseColor,
      highlightColor: highlightColor,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: isCircular ? BoxShape.circle : BoxShape.rectangle,
          borderRadius: isCircular ? null : BorderRadius.circular(borderRadius),
        ),
      ),
    );
  }
}
