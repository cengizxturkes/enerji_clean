import 'package:enerji_clean/lib/app/pages/joule_page/joule_page_view.dart';
import 'package:enerji_clean/lib/app/pages/kalori_page/kalori_page_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';

import '../../../domain/entities/model.dart';
import '../../misc/colors.dart';
import '../../widgets/app_large_text.dart';

import 'home_controller.dart';

class HomeView extends View {
  @override
  State<StatefulWidget> createState() {
    return _HomeViewState(HomeController());
  }
}

class _HomeViewState extends ViewState<HomeView, HomeController> {
  _HomeViewState(HomeController controller) : super(controller);

  @override
  Widget get view {
    return Scaffold(
      key: globalKey,
      body: PageView.builder(
          itemCount: images.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) {
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/" + images[index]),
                      fit: BoxFit.cover)),
              child: Container(
                margin: const EdgeInsets.only(top: 450, left: 10, right: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    AppLargeText(
                      text: mainpagetext[index],
                    ),
                    ElevatedButton(
                      child: Text(
                        "Hesaplama İçin Tıklayınız",
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {
                        if (index == 0) {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return KaloriPageView();
                          }));
                        } else if (index == 1) {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return JoulePageView();
                          }));
                        }
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 175, bottom: 60),
                      child: Row(
                        children: List.generate(3, (indexDots) {
                          return AnimatedContainer(
                            duration: Duration(seconds: 2),
                            curve: Curves.bounceIn,
                            margin: EdgeInsets.only(bottom: 2),
                            width: 8,
                            height: index == indexDots ? 25 : 15,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(11),
                                color: index == indexDots
                                    ? AppColors.maincolor
                                    : AppColors.maincolor.withOpacity(0.3)),
                          );
                        }),
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
