// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Api on ApiBase, Store {
  final _$getUserAsyncAction = AsyncAction('ApiBase.getUser');

  @override
  Future getUser() {
    return _$getUserAsyncAction.run(() => super.getUser());
  }

  final _$authAsyncAction = AsyncAction('ApiBase.auth');

  @override
  Future auth(String email, String password) {
    return _$authAsyncAction.run(() => super.auth(email, password));
  }

  final _$registerUserAsyncAction = AsyncAction('ApiBase.registerUser');

  @override
  Future registerUser(String email, String userName, String password) {
    return _$registerUserAsyncAction
        .run(() => super.registerUser(email, userName, password));
  }

  final _$getCattlesAsyncAction = AsyncAction('ApiBase.getCattles');

  @override
  Future getCattles() {
    return _$getCattlesAsyncAction.run(() => super.getCattles());
  }

  final _$getCattleByIdAsyncAction = AsyncAction('ApiBase.getCattleById');

  @override
  Future getCattleById(int cattleId) {
    return _$getCattleByIdAsyncAction.run(() => super.getCattleById(cattleId));
  }

  final _$updateCattleAsyncAction = AsyncAction('ApiBase.updateCattle');

  @override
  Future updateCattle(
      int cattleId,
      String cattleName,
      String creationType,
      String gender,
      String birthDay,
      String weigth,
      String qtdMilk,
      String daysToLactation,
      int farm) {
    return _$updateCattleAsyncAction.run(() => super.updateCattle(
        cattleId,
        cattleName,
        creationType,
        gender,
        birthDay,
        weigth,
        qtdMilk,
        daysToLactation,
        farm));
  }

  final _$patchCattleByIdAsyncAction = AsyncAction('ApiBase.patchCattleById');

  @override
  Future patchCattleById(int cattleId) {
    return _$patchCattleByIdAsyncAction
        .run(() => super.patchCattleById(cattleId));
  }

  final _$deleteCattleByIdAsyncAction = AsyncAction('ApiBase.deleteCattleById');

  @override
  Future deleteCattleById(int cattleId) {
    return _$deleteCattleByIdAsyncAction
        .run(() => super.deleteCattleById(cattleId));
  }

  final _$getFarmsAsyncAction = AsyncAction('ApiBase.getFarms');

  @override
  Future getFarms() {
    return _$getFarmsAsyncAction.run(() => super.getFarms());
  }

  final _$getFarmByIdAsyncAction = AsyncAction('ApiBase.getFarmById');

  @override
  Future getFarmById(int farmId) {
    return _$getFarmByIdAsyncAction.run(() => super.getFarmById(farmId));
  }

  final _$updatefarmAsyncAction = AsyncAction('ApiBase.updatefarm');

  @override
  Future updatefarm(
      String nameFarm, String city, String state, String size, int farmId) {
    return _$updatefarmAsyncAction
        .run(() => super.updatefarm(nameFarm, city, state, size, farmId));
  }

  final _$deleteFarmByIdAsyncAction = AsyncAction('ApiBase.deleteFarmById');

  @override
  Future deleteFarmById(int farmId) {
    return _$deleteFarmByIdAsyncAction.run(() => super.deleteFarmById(farmId));
  }

  final _$getIncomeAsyncAction = AsyncAction('ApiBase.getIncome');

  @override
  Future getIncome() {
    return _$getIncomeAsyncAction.run(() => super.getIncome());
  }

  final _$getIncomeByIdAsyncAction = AsyncAction('ApiBase.getIncomeById');

  @override
  Future getIncomeById(int incomeId) {
    return _$getIncomeByIdAsyncAction.run(() => super.getIncomeById(incomeId));
  }

  final _$updateIncomeAsyncAction = AsyncAction('ApiBase.updateIncome');

  @override
  Future updateIncome(String incomeType, String value, String date,
      String description, int incomeId, int farm) {
    return _$updateIncomeAsyncAction.run(() => super
        .updateIncome(incomeType, value, date, description, incomeId, farm));
  }

  final _$deleteIncomeByIdAsyncAction = AsyncAction('ApiBase.deleteIncomeById');

  @override
  Future deleteIncomeById(int incomeId) {
    return _$deleteIncomeByIdAsyncAction
        .run(() => super.deleteIncomeById(incomeId));
  }

  @override
  String toString() {
    return '''

    ''';
  }
}
