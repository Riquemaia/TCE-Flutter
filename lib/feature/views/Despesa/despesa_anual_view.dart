import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'package:feneco_fiap_tce_app/core/services/service_path.dart';
import 'package:feneco_fiap_tce_app/feature/services/DespesaAnual/despesa_anual_service.dart';
import 'package:feneco_fiap_tce_app/feature/utils/constants.dart';
import 'package:feneco_fiap_tce_app/feature/views_models/DespesaAnual/despesa_anual_view_model.dart';

import 'components/despesa_anual_listview.dart';

class DespesaAnualView extends StatelessWidget {
  DespesaAnualView({Key? key, required this.municipio}) : super(key: key);

  final String municipio;

  final despesaAnualViewModel = DespesaAnualViewModel(
    service: DespesaAnualService(
      Dio(
        BaseOptions(baseUrl: ServicePath.BASEURL.rawValue),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          // toolbarHeight: kToolbarHeight * 2,
          backgroundColor: kPrimaryColor,
          title: Column(
            children: [
              Text('Prestações de contas anual:\n${municipio.toUpperCase()}'
                  .toUpperCase()),
            ],
          ),
        ),
        body: Observer(
          builder: (_) {
            return despesaAnualViewModel.isLoading
                ? const CircularProgressIndicator(color: kPrimaryColor)
                : Column(
                    children: [
                      Text(municipio),
                      DespesaAnualListView(
                        data: despesaAnualViewModel.data,
                        municipio: municipio,
                      )
                    ],
                  );
          },
        ),
      ),
    );
  }
}
