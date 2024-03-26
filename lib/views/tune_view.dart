import 'package:flutter/material.dart';
import 'package:tune_player_app/widgets/tune_item.dart';

class TuneView extends StatelessWidget {
  const TuneView({super.key});
  final List<Color> tuneColors = const [
    Color(0xFFfe4039),
    Color(0xFFfd982b),
    Color(0xFFfdeb57),
    Color(0xFF33af57),
    Color(0xFF009587),
    Color(0xFF0097ed),
    Color(0xFFa227ac),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF243139),
        elevation: 0,
        title: const Text(
          'Flutter Tune',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: tuneColors
            .map(
              (color) => TuneItem(color: color),
            )
            .toList(),
      ),
    );
  }
}
