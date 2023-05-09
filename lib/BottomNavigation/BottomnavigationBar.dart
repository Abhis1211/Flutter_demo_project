// import '../config/Import.dart';
// import 'package:get_storage/get_storage.dart';


// class BottomnavigationBar extends StatefulWidget {
//   final jump;
//   BottomnavigationBar({
//     Key? key,
//     this.jump = 0,
//   }) : super(key: key);

//   @override
//   State<BottomnavigationBar> createState() => _BottomnavigationBarState();
// }

// class _BottomnavigationBarState extends State<BottomnavigationBar> {
//   int pageIndex = 0;
//   final box = GetStorage();
//   void _onItemTapped(int index) {
//     setState(() {
//       pageIndex = index;
//     });
//   }

//   @override
//   void initState() {
//     setState(() {
//       pageIndex = widget.jump;
//     });
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     var pages = [
     
//     ];
//     return WillPopScope(
//       onWillPop: () async {
//         return setvalue();
//       },
//       child: Scaffold(
//           backgroundColor: White,
//           body: pages[pageIndex],
//           bottomNavigationBar: BottomNavigationBar(
//             elevation: 20,
//             type: BottomNavigationBarType.fixed,
//             backgroundColor: White,
//             selectedItemColor: ButtonColor,
//             unselectedItemColor: PrimaryColor,
//             selectedFontSize: 0,
//             unselectedFontSize: 0,
//             currentIndex: pageIndex,
//             onTap: _onItemTapped,
//             items: [
//               BottomNavigationBarItem(
//                   backgroundColor: White,
//                   icon: pageIndex == 0
//                       ? Padding(
//                           padding: const EdgeInsets.only(top: 6),
//                           child: SvgPicture.string(
//                             selectedhomesvg,
//                             color: SkyBlue,
//                           ))
//                       : Padding(
//                           padding: const EdgeInsets.only(top: 6),
//                           child: SvgPicture.string(
//                             unselectedhomesvg,
//                           )),
//                   label: ""),
//               BottomNavigationBarItem(
//                   backgroundColor: White,
//                   icon: pageIndex == 1
//                       ? Padding(
//                           padding: const EdgeInsets.only(top: 6),
//                           child: SvgPicture.string(
//                             fillheartsvg,
//                             // color: Lightgreen,
//                           ),
//                         )
//                       : Padding(
//                           padding: const EdgeInsets.only(top: 6),
//                           child: SvgPicture.string(
//                             unfillheartsvg,
//                           ),
//                         ),
//                   label: ""),
//               BottomNavigationBarItem(
//                   backgroundColor: White,
//                   icon: pageIndex == 2
//                       ? Padding(
//                           padding: const EdgeInsets.only(top: 6, bottom: 6),
//                           child: SvgPicture.string(
//                             selectedsearchsvg,
//                             height: 50,
//                           ),
//                         )
//                       : Padding(
//                           padding: const EdgeInsets.only(top: 6, bottom: 6),
//                           child: SvgPicture.string(
//                             unselectedsearchsvg,
//                             height: 50,
//                           ),
//                         ),
//                   label: ""),
//               BottomNavigationBarItem(
//                   backgroundColor: White,
//                   icon: pageIndex == 3
//                       ? Padding(
//                           padding: const EdgeInsets.only(top: 6),
//                           child: SvgPicture.string(
//                             fillticketsvg,
//                           ),
//                         )
//                       : Padding(
//                           padding: const EdgeInsets.only(top: 6),
//                           child: SvgPicture.string(
//                             unfillticketsvg,
//                           ),
//                         ),
//                   label: ""),
//               BottomNavigationBarItem(
//                   backgroundColor: White,
//                   icon: pageIndex == 4
//                       ? Padding(
//                           padding: const EdgeInsets.only(top: 6),
//                           child: SvgPicture.string(
//                             fillpersonsvg,
//                           ),
//                         )
//                       : Padding(
//                           padding: const EdgeInsets.only(top: 6),
//                           child: SvgPicture.string(
//                             unfillpersonsvg,
//                           ),
//                         ),
//                   label: ""),
//             ],
//           )),
//     );
//   }

//   setvalue() {
//     setState(() {
//       pageIndex = 0;
//     });
//   }
// }
