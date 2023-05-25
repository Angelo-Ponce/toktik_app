import 'package:flutter/material.dart';

class VideoBackground extends StatelessWidget {

  final List<Color> colors;
  // los stops deben ser por cada color que se pase
  final List<double> stops;

  const VideoBackground({
    super.key,
    this.colors = const[
      Colors.transparent,
      Colors.black87
    ],
    this.stops = const [ 0.0, 1.0 ]
  }): assert( colors.length == stops.length, 'Stops and Colors');

  @override
  Widget build(BuildContext context) {
    // que tome el todo el espacio posible del stack Positioned.fill
    return Positioned.fill(
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: colors,
            stops: stops,
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter
          )
        )
      )
    );
  }
}