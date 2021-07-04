import 'package:flutter/material.dart';

class Button extends StatelessWidget
{
  Button({button, size, red ,green, blue})
      : _button = button,
        _size = size,
        _red = red.round(),
        _green = green.round(),
        _blue = blue.round();

  final _button, _size, _red, _green, _blue;

  @override
  Widget build(BuildContext context)
  {
    return Container(
      child: Icon(
        _button,
        size: _size,
        color: Color.fromRGBO(_red, _green, _blue, 10),
      ),
    );
  }
}