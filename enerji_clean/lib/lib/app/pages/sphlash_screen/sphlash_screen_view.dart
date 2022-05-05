import 'package:enerji_clean/lib/app/pages/sphlash_screen/sphlash_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';

class SphlashScreenView extends View {
  @override
  State<StatefulWidget> createState() {
    return _SphlashScreenState(SphlashScreenController());
  }
}

class _SphlashScreenState
    extends ViewState<SphlashScreenView, SphlashScreenController> {
  _SphlashScreenState(SphlashScreenController controller) : super(controller);

  @override
  Widget get view  {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/Enerjibilimi.png"),
                  fit: BoxFit.cover))),
    );
  }
}
