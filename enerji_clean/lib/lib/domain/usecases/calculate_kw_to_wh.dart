import 'dart:async';

import 'package:enerji_clean/lib/domain/entities/model.dart';
import 'package:enerji_clean/lib/domain/repositories/models_repository.dart';
import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';

class GetModels extends UseCase<List<WattSaat>,void>{
  final ModelsRepository _modelsRepository;
  final StreamController<List<WattSaat>> _controller;
  GetModels(this._modelsRepository):_controller=StreamController.broadcast();

  @override
  Future<Stream<List<WattSaat>?>> buildUseCaseStream(void params)async {
  try {
    _modelsRepository.getModels().listen((List<WattSaat>models){
      if (_controller.isClosed) _controller.add(models);
    });
  } catch (e,st) {
    print(e);
    print(st);
    _controller.addError(e,st);
  }
  return _controller.stream;
  }
  @override 
  void dispose(){
    _controller.close();
    super.dispose();
  }
}