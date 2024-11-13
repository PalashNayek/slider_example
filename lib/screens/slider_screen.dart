import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../di/setup_locator.dart';
import '../view_models/slider_viewmodel.dart';

class SliderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => getIt<SliderViewModel>(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Slider with MVVM and DI'),
        ),
        body: Center(
          child: Consumer<SliderViewModel>(
            builder: (context, viewModel, child) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Slider Value: ${viewModel.sliderValue.toStringAsFixed(1)}"),
                  Slider(
                    value: viewModel.sliderValue,
                    min: 0,
                    max: 100,
                    divisions: 100,
                    label: viewModel.sliderValue.toStringAsFixed(1),
                    onChanged: (double value) {
                      viewModel.setSliderValue(value);
                    },
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
