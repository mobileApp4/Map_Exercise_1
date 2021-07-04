import 'package:flutter/material.dart';
import 'package:exercise1_map/home/widgets/app_color_button.dart';

class Bottom extends StatelessWidget
{
  Bottom({state}) : _state = state;
  final _state;

  @override
  Widget build(BuildContext context)
  {
    return SizedBox(
      height: 160.0,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Slider(
                  value: _state.red,
                  min: 0.0,
                  max: 255.0,
                  onChanged: (value) {
                    if (_state.rgbwidget)
                    {
                      _state.red = value;
                    }
                  },
                ),
              ),
              if (_state.rgbwidget)
                ColorButton(
                  color: Colors.red,
                  number: _state.red,
                  colorType: 'red',
                  state: _state,
                ),
            ],
          ),
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Slider(
                  value: _state.green,
                  min: 0.0,
                  max: 255.0,
                  onChanged: (value) {
                    if (_state.rgbwidget) {
                      _state.green = value;
                    }
                  },
                ),
              ),
              if (_state.rgbwidget)
                ColorButton(
                  color: Colors.green,
                  number: _state.green,
                  colorType: 'green',
                  state: _state,
                ),
            ],
          ),
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Slider(
                  value: _state.blue,
                  min: 0.0,
                  max: 255.0,
                  onChanged: (value) {
                    if (_state.rgbwidget) {
                      _state.blue = value;
                    }
                  },
                ),
              ),
              if (_state.rgbwidget)
                ColorButton(
                  color: Colors.blue,
                  number: _state.blue,
                  colorType: 'blue',
                  state: _state,
                ),
            ],
          ),
        ],
      ),
    );
  }
}