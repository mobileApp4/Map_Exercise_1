import 'package:flutter/material.dart';
import 'package:exercise1_map/home/app_bar.dart';
import 'package:exercise1_map/home/app_drawer.dart';
import 'package:exercise1_map/home/app_body.dart';
import 'package:exercise1_map/home/app_bottom.dart';

class MyHomePage extends StatefulWidget
{
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
{
  var small = 100.0, medium = 300.0, large = 500.0;
  var _red = 0.0, _green = 0.0, _blue = 0.0, _size = 100.0, sizeicon = 100.0;
  var _sizewidget = true, _rgbwidget = true;

  get red => _red;
  set red(value) => setState(() => _red = value);
  get green => _green;
  set green(value) => setState(() => _green = value);
  get blue => _blue;
  set blue(value) => setState(() => _blue = value);

  get size => _size;
  set size(value) => setState(() => _size = value);

  get sizewidget => _sizewidget;
  set sizewidget(value) => setState(() => _sizewidget = value);
  get rgbwidget => _rgbwidget;
  set rgbwidget(value) => setState(() => _rgbwidget = value);

  @override
  Widget build(BuildContext context)
  {
    return SafeArea(
      child: Scaffold(
        drawer: AppDrawer(
          state: this,
        ),
        appBar: Appbar(
          state: this,
        ),
        body: Body(
          size: _size,
          red: _red,
          green: _green,
          blue: _blue,
        ),
        bottomNavigationBar: Bottom(
          state: this,
        ),
      ),
    );
  }
}