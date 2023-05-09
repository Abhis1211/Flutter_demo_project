import 'Textfield.dart';
import 'package:get/get.dart';
import '../config/TextStyle.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class NodataFound extends StatefulWidget {
  const NodataFound({super.key});

  @override
  State<NodataFound> createState() => _NodataFoundState();
}

class _NodataFoundState extends State<NodataFound> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Textfield().text("NodataFound".tr, TextStyles.mb16),
    );
  }
}
