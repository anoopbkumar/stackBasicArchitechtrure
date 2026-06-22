import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stackedbasic/ui/Splash/splashviewmodel.dart';

import '../../constants/assets.gen.dart';

class Splashview extends StatelessWidget {
  const Splashview({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SplashviewModel>.reactive(
      onViewModelReady: (viewModel) => viewModel.init(),
      viewModelBuilder: () => SplashviewModel(),
      builder: (context, viewModel, child) {
        return Scaffold(
          appBar: AppBar(title: Text(" View")),
          body: Stack(
            children: [
              if (viewModel.isBusy)
                const Center(child: CircularProgressIndicator()),
              if (viewModel.hasError) Center(child: Text("${viewModel.error}")),

              Center(
                child: Assets.images.firebase.image(
                  width: 200,
                  height: 200,
                  fit: .contain,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
