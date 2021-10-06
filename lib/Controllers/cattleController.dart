import 'package:mobx/mobx.dart';
import 'package:dio/dio.dart';
import 'package:dev/globals.dart';
// import 'package:flutter_secure_storage/flutter_secure_storage.dart';

part 'vaccineController.g.dart';

class VaccineController = VaccineControllerBase with _$VaccineController;

// final _storage = new FlutterSecureStorage();

abstract class VaccineControllerBase with Store {
  @observable
  List takenVaccines;

  @action 
  changeTakenVaccine(List value) => takenVaccines = value;

  @observable
  List dateOfTakenVaccines;

  @action
  changedateOfTakenVaccines(List value) => dateOfTakenVaccines = value;

  @action
  getCattles() async {
    Response response = await api.getCattles();
    return response.data["Cattle"];
  }

  @action
  postCattles(String creationType, String cattleId, String gender, String birthDay, String weigth, String qtdMilk, String daysToLactation, int farm) async {
    var resposta = true;
    try {
      await api.postCattles(creationType, cattleId, gender, birthDay, weigth, qtdMilk, daysToLactation, farm);
    } on DioError catch (err) {
      print("Erro: ${err.response.statusCode}");
      resposta = false;
    }
    return resposta;
  }

  @action
  getCattleById(String cattleID) async {
    Response response = await api.getCattleById(cattleID);
    await changeTakenVaccine(response.data["takenVaccine"]);
    return response.data["takenVaccine"];
  }


  updateCattle(String cattleId, String creationType, String gender, String birthDay, String weigth, String qtdMilk, String daysToLactation, int farm) async {
    try {
      await api.updateCattle(cattleId, creationType, gender, birthDay, weigth, qtdMilk, daysToLactation, farm);
    } on DioError catch (err) {
      print('erro');
      print("Erro: ${err.response.statusCode}");
    }
  }
}