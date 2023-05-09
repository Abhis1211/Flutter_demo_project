import 'package:shimmer/shimmer.dart';
import 'package:flutter/material.dart';

class Skeleton_loader extends StatelessWidget {
  final double? border_radius;
  final double? height;
  final int? count;
  final double? width;
  final padding;
  final listview;
  final single;
  final highlightcolor;
  const Skeleton_loader(
      {Key? key,
      this.border_radius,
      this.height,
      this.width,
      this.count = 5,
      this.padding,
      this.listview = true,
      this.single = false, this.highlightcolor = Colors.white})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return single
        ? Shimmer.fromColors(
            baseColor: Colors.grey.shade300,
            highlightColor: highlightcolor,
            period: Duration(milliseconds: 800),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(border_radius!),
                color: Colors.grey,
              ),
              height: height,
              width: width,
            ),
          )
        : listview
            ? ListView.builder(
                shrinkWrap: true,
                itemCount: count,
                padding: EdgeInsets.zero,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                      padding: padding,
                      child: Shimmer.fromColors(
                        baseColor: Colors.grey.shade300,
                        highlightColor: Colors.white,
                        period: Duration(milliseconds: 800),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(border_radius!),
                            color: Colors.grey,
                          ),
                          height: height,
                          width: width,
                        ),
                      ));
                })
            : GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 150,
                    childAspectRatio: 2 / 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 20),
                itemCount: count,
                itemBuilder: (BuildContext ctx, index) {
                  return Padding(
                      padding: padding,
                      child: Shimmer.fromColors(
                        baseColor: Colors.grey.shade300,
                        highlightColor: Colors.white,
                        period: Duration(milliseconds: 800),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(border_radius!),
                            color: Colors.grey,
                          ),
                          height: height,
                          width: width,
                        ),
                      ));
                });
  }
}
