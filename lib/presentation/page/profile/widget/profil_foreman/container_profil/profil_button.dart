import 'package:division/division.dart';
import 'package:flutter/material.dart';

class ProfilButton extends StatelessWidget {
  const ProfilButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TxtStyle _style = TxtStyle()
      ..fontSize(16)
      ..bold();

    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            flex: 1,
            child: OutlineButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Txt(
                'Chat',
                style: _style,
              ),
              onPressed: () {},
            ),
          ),
          SizedBox(width: 20),
          Expanded(
            flex: 1,
            child: RaisedButton(
              color: Colors.amberAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Txt(
                "Telepon",
                style: _style,
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
