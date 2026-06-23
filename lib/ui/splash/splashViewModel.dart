import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stackedbasic/app/utils.dart';
import 'package:stackedbasic/ui/login/loginView.dart';

import '../../app/app.router.dart';
import '../login/loginView.dart' as routes;

class SplashviewModel extends BaseViewModel {
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  Future<void> init() async {
    await Future.delayed(Duration(seconds: 5));
   // navigationservice.pushNamedAndRemoveUntil(Routes.loginview);
  }
}
