import '../config/Import.dart';

class SearchBox extends StatefulWidget {
  final searchcontroller;
  final onchange;
  final ontextchange;
  final hint;
  final suffixIcon;
  final prefixIcon;
  const SearchBox(
      {super.key,
      this.searchcontroller,
      this.onchange,
      this.ontextchange,
      this.hint,
      this.suffixIcon,
      this.prefixIcon});

  @override
  State<SearchBox> createState() => _SearchBoxState();
}

class _SearchBoxState extends State<SearchBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 45,
        padding: EdgeInsets.only(left: 5),
        width: MediaQuery.of(context).size.width,
        // color: White,
        decoration: BoxDecoration(
            // border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(15),
            color: White),
        child: TextField(
          textAlignVertical: TextAlignVertical.bottom,
          controller: widget.searchcontroller,
          onSubmitted: (value) {
            widget.onchange!(value);
          },
          onChanged: (value) {
            widget.ontextchange!(value);
          },
          style: TextStyles.withColor(TextStyles.mn14, Black),
          decoration: InputDecoration(
              border: InputBorder.none,
              hintText: widget.hint,
              hintStyle: TextStyles.withColor(TextStyles.mn14, Gray),
              suffixIcon: widget.suffixIcon,
              prefixIcon: widget.prefixIcon),
        )
        // Text(
        //   widget.title,
        //   style: widget.appbartxtstyle,
        //   textAlign: TextAlign.center,
        // ),
        );
  }
}
