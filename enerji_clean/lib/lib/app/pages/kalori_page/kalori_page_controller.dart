import 'package:enerji_clean/lib/app/pages/kalori_page/kalori_page_presenter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';

class KaloriPageController extends Controller {
  final KaloriPagePresenter _presenter;

  final controllerWh = TextEditingController();
  final contollerKw = TextEditingController();
  final controllerMwh = TextEditingController();
  final controllerGwh = TextEditingController();
  KaloriPageController() : _presenter = KaloriPagePresenter();
  @override
  void onInitState() {
    controllerWh.addListener(() {
      convertListener(double.tryParse(controllerWh.text) ?? 0);
    });

    controllerMwh.addListener(() {
      //convertListener1(double.tryParse(controllerMwh.text) ?? 0);
    });

    controllerGwh.addListener(() {
      //convertListener(double.tryParse(controllerGwh.text) ?? 0);
    });
    super.onInitState();
  }

  void convertListener(double value) {
    if (value == 0) {
      contollerKw.text = "";
      //controllerMwh.text = "";
      //controllerGwh.text = "";
      return;
    }
    contollerKw.text = _presenter.whToKwh(value).toString();
    controllerMwh.text = _presenter.whToMwh(value).toString();
    controllerGwh.text = _presenter.whtoGwh(value).toString();
  }

  void convertListener1(double value) {
    if (value == 0) {
      controllerMwh.text = "";
      return;
    }
  }

  @override
  void initListeners() {}
  @override
  void dispose() {
    _presenter.dispose();
    super.dispose();
  }
}
