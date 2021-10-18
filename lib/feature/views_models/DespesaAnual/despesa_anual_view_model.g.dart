// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'despesa_anual_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$DespesaAnualViewModel on _DespesaAnualViewModelBase, Store {
  final _$isLoadingAtom = Atom(name: '_DespesaAnualViewModelBase.isLoading');

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

  final _$despesaAnualRequestAtom =
      Atom(name: '_DespesaAnualViewModelBase.despesaAnualRequest');

  @override
  DespesaAnualRequest get despesaAnualRequest {
    _$despesaAnualRequestAtom.reportRead();
    return super.despesaAnualRequest;
  }

  @override
  set despesaAnualRequest(DespesaAnualRequest value) {
    _$despesaAnualRequestAtom.reportWrite(value, super.despesaAnualRequest, () {
      super.despesaAnualRequest = value;
    });
  }

  final _$dataAtom = Atom(name: '_DespesaAnualViewModelBase.data');

  @override
  ObservableList<DespesaAnualModel> get data {
    _$dataAtom.reportRead();
    return super.data;
  }

  @override
  set data(ObservableList<DespesaAnualModel> value) {
    _$dataAtom.reportWrite(value, super.data, () {
      super.data = value;
    });
  }

  final _$filtroAtom = Atom(name: '_DespesaAnualViewModelBase.filtro');

  @override
  String get filtro {
    _$filtroAtom.reportRead();
    return super.filtro;
  }

  @override
  set filtro(String value) {
    _$filtroAtom.reportWrite(value, super.filtro, () {
      super.filtro = value;
    });
  }

  final _$fetchDatasAsyncAction =
      AsyncAction('_DespesaAnualViewModelBase.fetchDatas');

  @override
  Future<void> fetchDatas() {
    return _$fetchDatasAsyncAction.run(() => super.fetchDatas());
  }

  final _$_DespesaAnualViewModelBaseActionController =
      ActionController(name: '_DespesaAnualViewModelBase');

  @override
  void changeLoading() {
    final _$actionInfo = _$_DespesaAnualViewModelBaseActionController
        .startAction(name: '_DespesaAnualViewModelBase.changeLoading');
    try {
      return super.changeLoading();
    } finally {
      _$_DespesaAnualViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
despesaAnualRequest: ${despesaAnualRequest},
data: ${data},
filtro: ${filtro}
    ''';
  }
}
