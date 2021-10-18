// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'municipio_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MunicipioViewModel on _MunicipioViewModelBase, Store {
  final _$isLoadingAtom = Atom(name: '_MunicipioViewModelBase.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  final _$municipioRequestAtom =
      Atom(name: '_MunicipioViewModelBase.municipioRequest');

  @override
  MunicipioRequest get municipioRequest {
    _$municipioRequestAtom.reportRead();
    return super.municipioRequest;
  }

  @override
  set municipioRequest(MunicipioRequest value) {
    _$municipioRequestAtom.reportWrite(value, super.municipioRequest, () {
      super.municipioRequest = value;
    });
  }

  final _$fetchDatasAsyncAction =
      AsyncAction('_MunicipioViewModelBase.fetchDatas');

  @override
  Future<void> fetchDatas() {
    return _$fetchDatasAsyncAction.run(() => super.fetchDatas());
  }

  final _$_MunicipioViewModelBaseActionController =
      ActionController(name: '_MunicipioViewModelBase');

  @override
  void changeLoading() {
    final _$actionInfo = _$_MunicipioViewModelBaseActionController.startAction(
        name: '_MunicipioViewModelBase.changeLoading');
    try {
      return super.changeLoading();
    } finally {
      _$_MunicipioViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
municipioRequest: ${municipioRequest}
    ''';
  }
}
