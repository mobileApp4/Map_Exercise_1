import 'package:flutter/material.dart';

class ColorButton extends StatelessWidget
{
  ColorButton({state, color, number, colorType})
      : _state = state,
        _color = color,
        _number = number,
        _colorType = colorType;

  final _state, _color, _number, _colorType;

  void setRGB(colorType)
  {
    if (colorType == 'red')
    {
      _state.red = 255.0;
      _state.green = 0.0;
      _state.blue = 0.0;
    }
    if (colorType == 'green')
    {
      _state.red = 0.0;
      _state.green = 255.0;
      _state.blue = 0.0;
    }
    if (colorType == 'blue')
    {
      _state.red = 0.0;
      _state.green = 0.0;
      _state.blue = 255.0;
    }
  }

  @override
  Widget build(BuildContext context)
  {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 0, 15, 0),
      height: 45.0,
      width: 45.0,
      child: FloatingActionButton(
        child: Text(_number.round().toString()),
        backgroundColor: _color,
        onPressed: () {
          setRGB(_colorType);
        },
      ),
    );
  }
}