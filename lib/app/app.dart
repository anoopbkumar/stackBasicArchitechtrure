import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stackedbasic/ui/login/loginView.dart';
import 'package:stackedbasic/ui/splash/splashView.dart';

import '../services/apiservice.dart';

@StackedApp(
    routes:[MaterialRoute(page:Splashview,initial: true),
      MaterialRoute(page:Loginview),

],
dependencies: [
  LazySingleton(classType: NavigationService),
  LazySingleton(classType: ApiService),

])
class AppSetup{}