import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget
{
  AppDrawer({state}) : _state = state;
  final _state;

  @override
  Widget build(BuildContext context)
  {
    return Drawer(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 2.5),
            decoration: BoxDecoration(
              color: Colors.white70,
              border: Border.all(
                color: Colors.grey,
              ),
            ),
            child: CheckboxListTile(
              title: const Text('Allow resize?'),
              autofocus: false,
              activeColor: Colors.brown,
              checkColor: Colors.white,
              selected: _state.sizewidget,
              value: _state.sizewidget,
              onChanged: (bool value) => _state.sizewidget = value,
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(5.0, 2.5, 5.0, 0.0),
            decoration: BoxDecoration(
              color: Colors.white70,
              border: Border.all(
                color: Colors.grey,
              ),
            ),
            child: CheckboxListTile(
              title: const Text('Allow change primer color?'),
              autofocus: false,
              activeColor: Colors.brown,
              checkColor: Colors.white,
              selected: _state.rgbwidget,
              value: _state.rgbwidget,
              onChanged: (bool value) => _state.rgbwidget = value,
            ),
          ),
        ],
      ),
    );
  }
}