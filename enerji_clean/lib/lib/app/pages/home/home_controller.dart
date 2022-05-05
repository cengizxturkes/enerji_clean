import 'package:enerji_clean/lib/app/pages/home/home_presenter.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';

class HomeController extends Controller {
  final HomePresenter _presenter;

  HomeController() : _presenter = HomePresenter();
 
@override  
void onInitState(){}
  @override
  void initListeners() {}
  @override
  void dispose() {
    _presenter.dispose();
    super.dispose();
  }
}
