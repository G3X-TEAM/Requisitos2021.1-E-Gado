import 'package:mobx/mobx.dart';
import 'package:dio/dio.dart';
import 'package:dev/globals.dart';

part 'incomeController.g.dart';

class IncomeController = IncomeControllerBase with _$IncomeController;

abstract class IncomeControllerBase with Store {
  @observable
  int profit = 0;

  @action
  changeProfit(int value) => profit = value;

  @observable
  int expense = 0;

  @action
  changeExpense(int value) => expense = value;

  @observable
  int totalValue = 0;

  @action
  changeTotalValue(int value) => totalValue = value;

  @observable
  int profit30 = 0;

  @action
  changeProfit30(int value) => profit30 = value;

  @observable
  int expense30 = 0;

  @action
  changeExpense30(int value) => expense30 = value;

  @observable
  int totalValue90 = 0;

  @action
  changeTotalValue90(int value) => totalValue90 = value;

  @observable
  int incomeId = 0;

  @action
  changeIncomeId(int value) => incomeId = value;

  @observable
  String incomeType = '';

  @action
  changeIncomeType(String value) => incomeType = value;

  @observable
  String incomeValue = '';

  @action
  changeIncomeValue(String value) => incomeValue = value;

  @observable
  String incomeDate = '';

  @action
  changeIncomeDate(String value) => incomeDate = value;

  @observable
  String incomeDescription = '';

  @action
  changeIncomeDescription(String value) => incomeDescription = value;

  @observable
  List incomeList;

  @action
  changeIncomeList(List value) => incomeList = value;

  @observable
  List incomeListMonth;

  @action
  changeIncomeListMonth(List value) => incomeListMonth = value;

  @action
  getIncome() async {
    Response response = await api.getIncome();
    changeIncomeList(response.data);
    return response.data;
  }

  @action
  getList(int opcao) async {
    var list = <dynamic>[];
    assert(list.isEmpty);
    DateTime dateIn;
    DateTime date = new DateTime.now();

    for (int i = 0; i < incomeList.length; i++) {
      dateIn = DateTime.parse(incomeList[i]['date']);
      final difference = date.difference(dateIn).inDays;

      if (opcao == 1) {
        if (difference <= 30) {
          if (incomeList[i]['farm'] == farmController.farmId) {
            list.add(incomeList[i]);
          }
        }
      }

      if (opcao == 2) {
        if (difference > 30 && difference <= 90) {
          if (incomeList[i]['farm'] == farmController.farmId) {
            list.add(incomeList[i]);
          }
        }
      }

      if (opcao == 3) {
        if (difference > 90 && difference <= 180) {
          if (incomeList[i]['farm'] == farmController.farmId) {
            list.add(incomeList[i]);
          }
        }
      }
      if (opcao == 0) {
        if (incomeList[i]['farm'] == farmController.farmId) {
          list.add(incomeList[i]);
        }
      }
    }
    return list;
  }

  @action
  getValues() async {
    int profitt = 0;
    int expensee = 0;
    int valueParse = 0;
    for (int i = 0; i < incomeList.length; i++) {
      if (incomeList[i]['farm'] == farmController.farmId) {
        if (incomeList[i]['income_type'] == 'LUCRO') {
          valueParse = int.parse(incomeList[i]['value']);
          profitt += valueParse;
        } else if (incomeList[i]['income_type'] == 'DESPESA') {
          valueParse = int.parse(incomeList[i]['value']);
          expensee += valueParse;
        }
      }
    }

    int valorSomado = profitt - expensee;
    changeProfit(profitt);
    changeExpense(expensee);
    changeTotalValue(valorSomado);
  }

  @action
  getValuePerDay(int opcao) {
    DateTime dateIn;
    DateTime date = new DateTime.now();
    int profitt = 0;
    int expensee = 0;
    int valueParse = 0;

    for (int i = 0; i < incomeList.length; i++) {
      if (incomeList[i]['farm'] == farmController.farmId) {
        dateIn = DateTime.parse(incomeList[i]['date']);
        final difference = date.difference(dateIn).inDays;

        if (opcao == 1) {
          if (difference <= 30) {
            if (incomeList[i]['income_type'] == 'LUCRO') {
              valueParse = int.parse(incomeList[i]['value']);
              profitt += valueParse;
            } else if (incomeList[i]['income_type'] == 'DESPESA') {
              valueParse = int.parse(incomeList[i]['value']);
              expensee += valueParse;
            }
          }
        }

        if (opcao == 2) {
          if (difference > 30 && difference <= 90) {
            if (incomeList[i]['income_type'] == 'LUCRO') {
              valueParse = int.parse(incomeList[i]['value']);
              profitt += valueParse;
            } else if (incomeList[i]['income_type'] == 'DESPESA') {
              valueParse = int.parse(incomeList[i]['value']);
              expensee += valueParse;
            }
          }
        }

        if (opcao == 3) {
          if (difference > 90 && difference <= 180) {
            if (incomeList[i]['income_type'] == 'LUCRO') {
              valueParse = int.parse(incomeList[i]['value']);
              profitt += valueParse;
            } else if (incomeList[i]['income_type'] == 'DESPESA') {
              valueParse = int.parse(incomeList[i]['value']);
              expensee += valueParse;
            }
          }
        }
      }
    }
    int valorSomado = profitt - expensee;
    changeProfit(profitt);
    changeExpense(expensee);
    changeTotalValue(valorSomado);
  }

  @action
  postIncome(String incomeType, String value, String date, String description,
      int farm) async {
    var resposta = true;
    try {
      await api.postIncome(incomeType, value, date, description, farm);
    } on DioError catch (err) {
      print("Erro: ${err.response.statusCode}");
      print("Erro: ${err.response.data}");
      resposta = false;
    }
    return resposta;
  }

  @action
  getIncomeById(int incomeID) async {
    Response response = await api.getIncomeById(incomeID);
    changeIncomeDescription(response.data['description']);
    changeIncomeValue(response.data['value']);
    changeIncomeId(response.data['id']);
    changeIncomeDate(response.data['date']);
    changeIncomeType(response.data['income_type']);

    return response.data;
  }

  updateIncome(
    String incomeType,
    String value,
    String date,
    String description,
    int incomeId,
    int farm,
  ) async {
    var resposta = true;
    try {
      await api.updateIncome(
        incomeType,
        value,
        date,
        description,
        incomeId,
        farm,
      );
    } on DioError catch (err) {
      resposta = false;
      print('erro');
      print("Erro: ${err.response.statusCode}");
    }
    return resposta;
  }

  deleteIncome(int incomeId) async {
    try {
      await api.deleteIncomeById(incomeId);
    } on DioError catch (err) {
      print("Erro: ${err.response.statusCode}");
    }
  }
}
