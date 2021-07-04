import 'package:flutter/material.dart';
import 'package:exercise1_map/home/widgets/app_size_button.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Appbar extends StatelessWidget implements PreferredSizeWidget{
  Appbar({state}) : _state = state;

  final _state;

  Size get preferredSize => const Size.fromHeight(50.0);

  @override
  Widget build(BuildContext context)
  {
    return AppBar(
        title: Text('My Icon'),
        actions: [
          if(_state.sizewidget)
            SizeButton(
              color: Colors.white,
              icon: Icons.remove_circle_outline,
              sizeChange: 'minus',
              state: _state,
            ),
          if(_state.sizewidget)
            SizeButton(
              color: Colors.white,
              icon: MdiIcons.alphaSCircleOutline,
              sizeChange: 'small',
              state: _state,
            ),
          if(_state.sizewidget)
            SizeButton(
              color: Colors.white,
              icon: MdiIcons.alphaMCircleOutline,
              sizeChange: 'medium',
              state: _state,
            ),
          if(_state.sizewidget)
            SizeButton(
              color: Colors.white,
              icon: MdiIcons.alphaLCircleOutline,
              sizeChange: 'large',
              state: _state,
            ),
          if(_state.sizewidget)
            SizeButton(
              color: Colors.white,
              icon: Icons.add_circle_outline,
              sizeChange: 'plus',
              state: _state,
            )
        ]
    );
  }
}