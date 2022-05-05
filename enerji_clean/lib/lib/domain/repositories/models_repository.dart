import 'package:enerji_clean/lib/domain/entities/model.dart';

abstract class ModelsRepository{
  Stream<List<WattSaat>> getModels();
}