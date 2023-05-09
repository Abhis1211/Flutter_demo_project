import 'Routes/Routes.dart';
import 'config/LocalString.dart';
import 'Routes/RoutesString.dart';
import 'package:ruffpass/config/Import.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Localstring(),
      locale: Get.deviceLocale,
      fallbackLocale: const Locale('en', 'US'),
      debugShowMaterialGrid: false,
      debugShowCheckedModeBanner: false,
      initialRoute: splashRoute,
      getPages: Routes(),
    );
  }
}
