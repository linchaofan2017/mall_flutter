import 'package:flutter/material.dart';

class IconTextArrow extends StatelessWidget {
  final IconData _iconData;
  final String _title;
  final Color _color;
  VoidCallback _callback;
  double _height;

  IconTextArrow(this._iconData, this._title, this._color,
      {double height, VoidCallback callback}) {
    this._height = height;
    this._callback = callback;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: _height ?? 40,
      child: InkWell(
        onTap: _callback,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(left: 10),
                child: Icon(
                  _iconData,
                  size: 23,
                  color: _color,
                )),
            Padding(
              padding: EdgeInsets.only(left: 10),
            ),
            Text(
              _title,
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.centerRight,
                margin: EdgeInsets.only(right: 15),
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.grey,
                  size: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
