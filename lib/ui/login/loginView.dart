import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stackedbasic/ui/login/loginviewmodel.dart';


class Loginview extends StatelessWidget {
  const Loginview({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<Loginviewmodel>.reactive(
      onViewModelReady: (viewModel) => viewModel.init(),
      viewModelBuilder: () => Loginviewmodel(),
      builder: (context, viewModel, child) {
        return Scaffold(
          backgroundColor: Colors.red,
          appBar: AppBar(
            title: Text(" Loginview"),
          ),

        );
      },
    );
  }
}