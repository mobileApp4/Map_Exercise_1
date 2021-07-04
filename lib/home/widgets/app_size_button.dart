import 'package:flutter/material.dart';

class SizeButton extends StatelessWidget
{
  SizeButton({color, icon, sizeChange, state})
      : _color = color,
        _icon = icon,
        _sizeChange = sizeChange,
        _state = state;

  final _color, _icon, _sizeChange, _state;

  void changeSize()
  {
    if(_sizeChange == 'minus')
    {
      if(_state.size > 50.0){
        _state.size = _state.size - 50.0;
      }
    }
    if(_sizeChange == 'small')
    {
      _state.size = 100.0;
    }
    if(_sizeChange == 'medium')
    {
      _state.size = 250.0;
    }
    if(_sizeChange == 'large')
    {
      _state.size = 400.0;
    }
    if(_sizeChange == 'plus')
    {
      if(_state.size < 400)
      {
        _state.size = _state.size + 50.0;
      }
    }
  }

  @override
  Widget build(BuildContext context)
  {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 0, 15, 0),
      width: 30,
      height: 30,
      alignment: Alignment.center,
      child: Container(
        child: IconButton(
          icon: Icon(_icon),
          color: _color,
          iconSize: 30,
          onPressed: () => changeSize(),
        ),
      ),
    );
  }
}