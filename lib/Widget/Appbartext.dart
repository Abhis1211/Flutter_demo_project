import 'package:get/get.dart';
import '../config/Color.dart';
import '../config/TextStyle.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';





class Appbartext extends StatefulWidget {
  final String title;

  final show_arrow_icon;
  final show_icon;
  final icon;
  final elevation;
  final double? height;
  final colors;
  final Function? ontap;
  final bool? showbottom;
  final bool? showtext;

  final appbartxtstyle;
  final appbartxt;

  final arrowiconcolor;

  final imgoricon;
  final image;
  final imagecolor;
  final String? svgimg;
  final child;
  final showtextbox;
  final titlestyle;
  final titlecolor;
  final search_value;
  final transparent;
  final Function? onchange;
  Appbartext({
    Key? key,
    required this.title,
    this.icon = 0,
    this.show_icon = 0,
    this.elevation = 0.0,
    this.height = 40.0,
    this.colors = White,
    this.ontap,
    this.show_arrow_icon = 0,
    this.showbottom = false,
    this.showtext = false,
    this.appbartxtstyle = TextStyles.mw50016,
    this.appbartxt,
    this.arrowiconcolor = LightBlack,
    this.imgoricon = false,
    this.svgimg,
    this.showtextbox = false,
    this.search_value,
    this.onchange,
    this.transparent = false,
    this.image,
    this.imagecolor = White,
    this.child,
    this.titlestyle = TextStyles.mw50018,
    this.titlecolor = LightBlack,
  }) : super(key: key);
  @override
  State<Appbartext> createState() => _AppbartextState();
}

class _AppbartextState extends State<Appbartext> {
  TextEditingController search = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      // toolbarHeight: 200,
      elevation: widget.elevation,
      automaticallyImplyLeading: false,
      // flexibleSpace: widget.transparent
      //     ? Image(
      //         image: AssetImage(background),
      //         fit: BoxFit.cover,
      //       )
      //     : null,
      backgroundColor: widget.transparent ? Colors.transparent : widget.colors,
      systemOverlayStyle: SystemUiOverlayStyle(
        // Status bar color
        statusBarColor: widget.colors,
        // Status bar brightness (optional)
        statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
        statusBarBrightness: Brightness.dark, // For iOS (dark icons)
      ),
      title: Container(
        // decoration: BoxDecoration(border: Border.all(color: Colors.red)),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            if (widget.show_arrow_icon == 0)
              GestureDetector(
                onTap: () {
                  Get.back();
                  // backScreen(context);
                },
                child: Container(
                  // decoration: BoxDecoration(border: Border.all(color: colo)),
                  width: 40,
                  height: 20,
                  alignment: Alignment.centerLeft,
                  // decoration: BoxDecoration(border:Border.all(color: Colors.black) ),
                  child: Icon(
                    Icons.arrow_back,
                    color: widget.arrowiconcolor,
                    size: 20,
                  ),
                ),
              ),
            widget.showtextbox
                ? Container(
                    height: 30,
                    width: MediaQuery.of(context).size.width * .65,
                    // decoration: BoxDecoration(border:Border.all(color: Colors.black) ),
                    child: TextField(
                      textAlignVertical: TextAlignVertical.bottom,
                      controller: search,
                      onSubmitted: (value) {
                        widget.onchange!(value);
                      },
                      onChanged: (value) {
                        widget.onchange!(value);
                      },
                      style: TextStyles.withColor(TextStyles.mn14, White),
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Searchtxt'.tr,
                          hintStyle:
                              TextStyles.withColor(TextStyles.mn14, White)),
                    ),
                  )
                : Expanded(
                    child: Container(
                      child: Text(
                        widget.title,
                        style: TextStyles.Dynamic(
                          style: widget.titlestyle,
                          color: widget.titlecolor,
                        ),
                        // textAlign: TextAlign.center,
                      ),
                    ),
                  ),
            if (widget.show_icon == 1)
              GestureDetector(
                onTap: () {
                  widget.ontap!();
                },
                child: Container(
                    // decoration: BoxDecoration(
                    //   border: Border.all(color: Colors.black)),
                    alignment: Alignment.centerRight,
                    child: widget.child),
              )
          ],
        ),
      ),
    );
  }
}
