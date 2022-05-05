import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';

class KaloriPagePresenter extends Presenter {
  @override
  void dispose() {}
  double whToKwh(double wh) {
    return wh / 1000;
  }

  double whToMwh(double wh) {
    return wh / 1000000;
  }

  double whtoGwh(double wh) {
    return wh / 1000000000;
  }

}