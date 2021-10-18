// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'despesa_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$DespesaViewModel on _DespesaViewModelBase, Store {
  final _$isLoadingAtom = Atom(name: '_DespesaViewModelBase.isLoading');

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

  final _$despesaRequestAtom =
      Atom(name: '_DespesaViewModelBase.despesaRequest');

  @override
  DespesaRequest get despesaRequest {
    _$despesaRequestAtom.reportRead();
    return super.despesaRequest;
  }

  @override
  set despesaRequest(DespesaRequest value) {
    _$despesaRequestAtom.reportWrite(value, super.despesaRequest, () {
      super.despesaRequest = value;
    });
  }

  final _$fetchDatasAsyncAction =
      AsyncAction('_DespesaViewModelBase.fetchDatas');

  @override
  Future<void> fetchDatas() {
    return _$fetchDatasAsyncAction.run(() => super.fetchDatas());
  }

  final _$_DespesaViewModelBaseActionController =
      ActionController(name: '_DespesaViewModelBase');

  @override
  void changeLoading() {
    final _$actionInfo = _$_DespesaViewModelBaseActionController.startAction(
        name: '_DespesaViewModelBase.changeLoading');
    try {
      return super.changeLoading();
    } finally {
      _$_DespesaViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
despesaRequest: ${despesaRequest}
    ''';
  }
}
