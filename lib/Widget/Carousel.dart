import '../config/Import.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Carousel extends StatefulWidget {
  final List carousel;

  const Carousel({
    super.key,
    required this.carousel,
  });

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return CarouselSlider(
      options: CarouselOptions(
          height: 180.0,
          // aspectRatio: 5 / 9,
          viewportFraction: 1.0,
          autoPlay: true),
      items: widget.carousel.map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: size.width,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Image.asset(
                  i['image'].toString(),
                  fit: BoxFit.cover,
                ),
              ).paddingAll(0.0),
            );
          },
        );
      }).toList(),
    );
  }
}
