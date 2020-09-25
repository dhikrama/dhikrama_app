import 'package:dhikrama_app/presentation/style/container_style.dart';
import 'package:dhikrama_app/presentation/style/text_style.dart';
import 'package:division/division.dart';
import 'package:flutter/material.dart';

class SliderBlog extends StatelessWidget {
  List<String> _image = [
    "https://homepages.cae.wisc.edu/~ece533/images/mountain.png",
    "https://homepages.cae.wisc.edu/~ece533/images/sails.png",
    "https://homepages.cae.wisc.edu/~ece533/images/tulips.png",
  ];
  PageController controller =
      PageController(viewportFraction: 0.7, initialPage: 1);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, bottom: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Txt(
                "Postingan Terbaru",
                style: textStyle.clone()
                  ..fontSize(20)
                  ..opacity(1),
              ),
              SizedBox(height: 4),
              Txt(
                "Ini adalah postingan terbaru dari Dhikrama Creator",
                style: textStyle,
              ),
            ],
          ),
        ),
        Container(
          height: 220,
          child: PageView.builder(
            controller: controller,
            itemCount: _image.length,
            itemBuilder: (context, index) {
              return ContainerSlider(
                text: "Postingan 1",
                textDesc:
                    "Lorem cillum esse ullamco ut velit dolor adipisicing laborum aliquip esse aliqua.Laboris veniam eu et exercitation culpa Lorem irure proident sunt consectetur sint proident adipisicing officia.Irure dolor ad sit ad.",
                images: _image[index],
              );
            },
          ),
        ),
      ],
    );
  }
}

class ContainerSlider extends StatelessWidget {
  const ContainerSlider({
    Key key,
    @required this.text,
    @required this.images,
    @required this.textDesc,
  }) : super(key: key);
  final String text;
  final String textDesc;
  final String images;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
            child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Parent(
                style: parentStyle.clone()
                  ..background.image(url: images, fit: BoxFit.cover)
                  ..width(215)
                  ..height(120)
                  ..elevation(.1),
                child: Container(),
              ),
              Txt(text),
              SizedBox(height: 10),
              Txt(
                textDesc,
                style: textStyle.clone()
                  ..textOverflow(TextOverflow.fade)
                  ..maxLines(3),
              )
            ],
          ),
        )),
      ],
    );
  }
}
