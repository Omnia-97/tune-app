import 'package:flutter/material.dart';
import 'package:tune_player_app/models/tune_model.dart';
import 'package:tune_player_app/widgets/tune_item.dart';

class TuneView extends StatelessWidget {
  const TuneView({super.key});
  final List<TuneModel> tunes = const [
    TuneModel(color: Color(0xFFfe4039) , sound: 'note1.wav'),
    TuneModel(color: Color(0xFFfd982b) , sound: 'note2.wav'),
    TuneModel(color: Color(0xFFfdeb57), sound: 'note3.wav'),
    TuneModel(color: Color(0xFF33af57), sound: 'note4.wav'),
    TuneModel(color: Color(0xFF009587), sound: 'note5.wav'),
    TuneModel(color:  Color(0xFF0097ed), sound: 'note6.wav'),
    TuneModel(color:  Color(0xFFa227ac), sound: 'note7.wav'),
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
        children: tunes
            .map(
              (e) => TuneItem(tuneModel: e,),
            )
            .toList(),
      ),
    );
  }
}
