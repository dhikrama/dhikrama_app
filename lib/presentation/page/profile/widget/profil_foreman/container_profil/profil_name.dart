import 'package:dhikrama_app/presentation/style/text_style.dart';
import 'package:division/division.dart';
import 'package:flutter/material.dart';

class ProfilName extends StatelessWidget {
  const ProfilName({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ParentStyle _parentStyle = ParentStyle()
      ..borderRadius(all: 20)
      ..margin(right: 20, bottom: 10)
      ..background.image(
          fit: BoxFit.cover,
          url:
              "https://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50");

    return Container(
      height: 135,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Parent(
            child: Container(
              width: 120,
            ),
            style: _parentStyle,
          ),
          Flexible(
            child: Container(
              margin: EdgeInsets.only(top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Txt(
                    "Dhikrama Creator",
                    style: TxtStyle()
                      ..fontSize(16)
                      ..textOverflow(TextOverflow.fade)
                      ..maxLines(1)
                      ..bold(),
                  ),
                  SizedBox(height: 10),
                  Txt("Ceo Dhikrama Group", style: textStyle),
                  SizedBox(height: 10),
                  Parent(
                    style: ParentStyle()
                      ..background.color(Colors.grey[100])
                      ..borderRadius(all: 10)
                      ..height(50),
                    child: Container(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                          TxtWIdgetStatus(
                            style: textStyle,
                            txt: "Proyek",
                            txtNumber: "22",
                          ),
                          TxtWIdgetStatus(
                            style: textStyle,
                            txt: "Selesai",
                            txtNumber: "20",
                          ),
                          TxtWIdgetStatus(
                            style: textStyle,
                            txt: "Proses",
                            txtNumber: "2",
                          ),
                        ])),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TxtWIdgetStatus extends StatelessWidget {
  const TxtWIdgetStatus({
    Key key,
    @required TxtStyle style,
    @required String txt,
    @required String txtNumber,
  })  : _style = style,
        _txt = txt,
        _txtNumber = txtNumber,
        super(key: key);
  final TxtStyle _style;
  final String _txt;
  final String _txtNumber;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Txt(
          _txt,
          style: _style,
        ),
        Txt(_txtNumber),
      ],
    );
  }
}
