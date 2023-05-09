import 'dart:developer';
import '../config/Import.dart';
import 'package:get_storage/get_storage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final box = GetStorage();
  bool nointernet = false;
  @override
  void initState() {
    super.initState();
    // Firebase();
  }
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      // statusBarIconBrightness: Brightness.dark, // status bar color
    ));
    var size = MediaQuery.of(context).size;
    return Container(
      child: SvgPicture.string(
        rightarrowsvg,
        fit: BoxFit.cover,
      ),
    );
  }
}
