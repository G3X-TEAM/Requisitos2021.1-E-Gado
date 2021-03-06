// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'farmController.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$FarmController on FarmControllerBase, Store {
  final _$farmNameAtom = Atom(name: 'FarmControllerBase.farmName');

  @override
  String get farmName {
    _$farmNameAtom.reportRead();
    return super.farmName;
  }

  @override
  set farmName(String value) {
    _$farmNameAtom.reportWrite(value, super.farmName, () {
      super.farmName = value;
    });
  }

  final _$farmCityAtom = Atom(name: 'FarmControllerBase.farmCity');

  @override
  String get farmCity {
    _$farmCityAtom.reportRead();
    return super.farmCity;
  }

  @override
  set farmCity(String value) {
    _$farmCityAtom.reportWrite(value, super.farmCity, () {
      super.farmCity = value;
    });
  }

  final _$farmStateAtom = Atom(name: 'FarmControllerBase.farmState');

  @override
  String get farmState {
    _$farmStateAtom.reportRead();
    return super.farmState;
  }

  @override
  set farmState(String value) {
    _$farmStateAtom.reportWrite(value, super.farmState, () {
      super.farmState = value;
    });
  }

  final _$farmTamAtom = Atom(name: 'FarmControllerBase.farmTam');

  @override
  String get farmTam {
    _$farmTamAtom.reportRead();
    return super.farmTam;
  }

  @override
  set farmTam(String value) {
    _$farmTamAtom.reportWrite(value, super.farmTam, () {
      super.farmTam = value;
    });
  }

  final _$getFarmsAsyncAction = AsyncAction('FarmControllerBase.getFarms');

  @override
  Future getFarms() {
    return _$getFarmsAsyncAction.run(() => super.getFarms());
  }

  final _$postFarmAsyncAction = AsyncAction('FarmControllerBase.postFarm');

  @override
  Future postFarm(String nameFarm, String city, String state, String size) {
    return _$postFarmAsyncAction
        .run(() => super.postFarm(nameFarm, city, state, size));
  }

  final _$getFarmByIdAsyncAction =
      AsyncAction('FarmControllerBase.getFarmById');

  @override
  Future getFarmById(int farmId) {
    return _$getFarmByIdAsyncAction.run(() => super.getFarmById(farmId));
  }

  final _$FarmControllerBaseActionController =
      ActionController(name: 'FarmControllerBase');

  @override
  dynamic changeFarmName(String value) {
    final _$actionInfo = _$FarmControllerBaseActionController.startAction(
        name: 'FarmControllerBase.changeFarmName');
    try {
      return super.changeFarmName(value);
    } finally {
      _$FarmControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeFarmCity(String value) {
    final _$actionInfo = _$FarmControllerBaseActionController.startAction(
        name: 'FarmControllerBase.changeFarmCity');
    try {
      return super.changeFarmCity(value);
    } finally {
      _$FarmControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeFarmState(String value) {
    final _$actionInfo = _$FarmControllerBaseActionController.startAction(
        name: 'FarmControllerBase.changeFarmState');
    try {
      return super.changeFarmState(value);
    } finally {
      _$FarmControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeFarmTam(String value) {
    final _$actionInfo = _$FarmControllerBaseActionController.startAction(
        name: 'FarmControllerBase.changeFarmTam');
    try {
      return super.changeFarmTam(value);
    } finally {
      _$FarmControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeFarmId(int value) {
    final _$actionInfo = _$FarmControllerBaseActionController.startAction(
        name: 'FarmControllerBase.changeFarmId');
    try {
      return super.changeFarmId(value);
    } finally {
      _$FarmControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
farmName: ${farmName},
farmCity: ${farmCity},
farmState: ${farmState},
farmTam: ${farmTam}
    ''';
  }
}
