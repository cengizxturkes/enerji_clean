import 'package:enerji_clean/lib/app/pages/joule_page/joule_page_presenter.dart';

import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';

class JoulePageController extends Controller {
  final JoulePagePresenter _presenter;
  JoulePageController() : _presenter = JoulePagePresenter();
  final controllerJ = TextEditingController();
  final contollerKJ = TextEditingController();
  final controllerMJ = TextEditingController();
  final controllerGJ = TextEditingController();
  @override
  void initListeners() {}
  void onInitState() {
    controllerJ.addListener(() {
      convertListener(double.tryParse(controllerJ.text) ?? 0);
    });
  }

  void convertListener(double value) {
    if (value == 0) {
      contollerKJ.text="";

      return;
    }
    super.onInitState();
    contollerKJ.text = _presenter.jToKj(value).toString();
  }
}
