import 'package:enerji_clean/lib/app/pages/kalori_page/kalori_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';

import '../../misc/const_style.dart';

class KaloriPageView extends View {
  @override
  State<StatefulWidget> createState() {
    return _KaloriPageState(KaloriPageController());
  }
}

class _KaloriPageState extends ViewState<KaloriPageView, KaloriPageController> {
  _KaloriPageState(KaloriPageController controller) : super(controller);

  @override
  // TODO: implement view
  Widget get view {
    return Scaffold(
      
        key: globalKey,
        appBar: AppBar(
          title: Text("Enerji Birimi Dönüştürme"),
          backgroundColor: Color(0xff4169E1).withOpacity(0.3),
        ),
        body: Column(
          children: [
            Expanded(
              child: ControlledWidgetBuilder<KaloriPageController>(
                builder: (context, controller) {
                  String Whdegeri = "";

                  return Scaffold(
                    backgroundColor: Color(0xffd9d9d9),
                    body: Center(
                      child: Column(
                        children: [
                          Text(
                            "WATT SAAT",
                            style: kTitleStyleBold(Colors.black),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 8),
                            child: Container(
                              child: TextFormField(
                                controller: controller.controllerWh,
                                decoration: const InputDecoration(
                                  hintText: 'Wh Enerji Değerini Giriniz',
                                  labelText: 'Wh Enerji',
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 8),
                            child: TextFormField(
                              decoration: const InputDecoration(
                                hintText: 'KWh Enerji Değerini Giriniz',
                                labelText: "KWhdegeri",
                              ),
                              controller: controller.contollerKw,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 8),
                            child: TextFormField(
                              decoration: const InputDecoration(
                                hintText: 'MWh Enerji Değerini Giriniz',
                                labelText: "MWhdegeri",
                              ),
                              controller: controller.controllerMwh,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 8),
                            child: TextFormField(
                              decoration: const InputDecoration(
                                hintText: 'GWh Enerji Değerini Giriniz',
                                labelText: "GWhdegeri",
                              ),
                              controller: controller.controllerGwh,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ));
  }
}
