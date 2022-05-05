import 'package:enerji_clean/lib/app/pages/joule_page/joule_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';

import '../../misc/const_style.dart';

class JoulePageView extends View{
  @override
  State<StatefulWidget> createState() {
    return _JoulePageState(JoulePageController());

   
  }
  
}
class _JoulePageState extends ViewState<JoulePageView,JoulePageController>{
  _JoulePageState(JoulePageController controller):super(controller);

  @override

  Widget get view {return Scaffold(
      
        key: globalKey,
        appBar: AppBar(
          title: Text("Enerji Birimi Dönüştürme"),
          backgroundColor: Color(0xff4169E1).withOpacity(0.3),
        ),
        body: Column(
          children: [
            Expanded(
              child: ControlledWidgetBuilder<JoulePageController>(
                builder: (context, controller) {
                  String Whdegeri = "";

                  return Scaffold(
                    backgroundColor: Color(0xffF87CEEB),
                    body: Center(
                      child: Column(
                        children: [
                          Text(
                            "Joule",
                            style: kTitleStyleBold(Colors.black),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 8),
                            child: Container(
                              child: TextFormField(
                                controller: controller.controllerJ,
                                decoration: const InputDecoration(
                                  hintText: 'Joule Enerji Değerini Giriniz',
                                  labelText: 'J Enerji',
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 8),
                            child: TextFormField(
                              decoration: const InputDecoration(
                                hintText: 'KJoule Enerji Değerini Giriniz',
                                labelText: "KJ Enerji",
                              ),
                              controller: controller.contollerKJ,
                            ),
                          ),
                         /* Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 8),
                            child: TextFormField(
                              decoration: const InputDecoration(
                                hintText: 'MJoule Enerji Değerini Giriniz',
                                labelText: "MJ Enerji",
                              ),
                              controller: controller.controllerMJ,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 8),
                            child: TextFormField(
                              decoration: const InputDecoration(
                                hintText: 'GJoule Enerji Değerini Giriniz',
                                labelText: "GJ Enerji",
                              ),
                              controller: controller.controllerGJ,
                            ),
                          ),*/
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ));;}
}