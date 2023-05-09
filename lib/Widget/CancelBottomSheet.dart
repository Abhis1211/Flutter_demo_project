import 'Button.dart';
import '../../config/Import.dart';



class CancelBottomSheet extends StatefulWidget {
  final msg;
  final submsg;
  final leftbtnName;
  final leftbtnClr;
  final Function? leftonTap;
  final rightbtnName;
  final rightbtnClr;
  final Function? rightonTap;
  const CancelBottomSheet(
      {super.key,
      this.msg,
      this.submsg = null,
      this.leftbtnName,
      this.leftbtnClr = Orange,
      this.leftonTap,
      this.rightbtnName,
      this.rightbtnClr = ButtonColor,
      this.rightonTap});

  @override
  State<CancelBottomSheet> createState() => _CancelBottomSheetState();
}

class _CancelBottomSheetState extends State<CancelBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Textfield()
          .text(
              widget.msg,
              TextStyles.Dynamic(
                style: TextStyles.mw50024,
                color: LightBlack,
              ),
              TextAlign.center)
          .paddingSymmetric(vertical: 20),
      if (widget.submsg != null)
        Textfield().text(
            widget.submsg,
            TextStyles.Dynamic(
              style: TextStyles.mn16,
              color: Lighttext,
            ),
            TextAlign.center),
      SizedBox(height: 60),
      Row(
        children: [
          Expanded(
            child: ElevatedButtons(
              name: widget.leftbtnName,
              colorbtn: widget.leftbtnClr,
              onTap: () {
                widget.leftonTap!();
              },
            ).paddingSymmetric(horizontal: 10),
          ),
          Expanded(
              child: ElevatedButtons(
            name: widget.rightbtnName,
            colorbtn: widget.rightbtnClr,
            onTap: () {
              widget.rightonTap!();
            },
          ).paddingSymmetric(horizontal: 10)),
        ],
      ).paddingOnly(bottom: 20)
    ]);
  }
}
