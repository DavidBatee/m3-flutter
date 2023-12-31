import 'package:flutter/material.dart';
import 'package:flutter_application_13/pertemuan13/pertemuan13_provider.dart';
import 'package:provider/provider.dart';

class SliderWidget extends StatelessWidget {
  const SliderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final prov = Provider.of<Pertemuan13Provider>(context);
    return Tooltip(
      message: prov.sliderValue.round().toString(),
      child: Slider(
          value: prov.sliderValue,
          min: 0,
          max: 10,
          label: prov.sliderValue.round().toString(),
          onChanged: (value) {
            prov.setSliderValue = value;
          }),
    );
  }
}