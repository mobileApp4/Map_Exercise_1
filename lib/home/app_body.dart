import 'package:flutter/material.dart';
import 'package:exercise1_map/home/widgets/app_button.dart';

class Body extends StatelessWidget
{
  Body({size, red, green, blue})
      : _size = size,
        _red = red,
        _green = green,
        _blue = blue;

  final _size, _red, _green, _blue;

  @override
  Widget build(BuildContext context)
  {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Button(
            button: Icons.alarm,
            size: _size,
            red: _red,
            green: _green,
            blue: _blue,
          ),
        ],
      ),
    );
  }
}