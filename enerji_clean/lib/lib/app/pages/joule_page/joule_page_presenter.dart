import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';

class JoulePagePresenter extends Presenter{
  @override
  void dispose() {
    
  }
  double jToKj(double wh) {
    return wh / 1000;
  }

  double jToMj(double wh) {
    return wh / 1000000;
  }

  double jToGj(double wh) {
    return wh / 1000000000;
  }

}