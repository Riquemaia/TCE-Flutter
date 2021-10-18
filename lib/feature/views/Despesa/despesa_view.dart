import 'package:dio/dio.dart';
import 'package:feneco_fiap_tce_app/core/services/service_path.dart';
import 'package:flutter/material.dart';

import 'package:feneco_fiap_tce_app/feature/utils/constants.dart';
import 'package:feneco_fiap_tce_app/feature/views_models/Despesas/despesa_view_model.dart';
import 'package:feneco_fiap_tce_app/feature/services/Despesas/despesas_service.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'components/despesa_listview.dart';

class DespesaView extends StatelessWidget {
  DespesaView({Key? key, required this.ano, required this.municipio})
      : super(key: key);
  final String municipio;
  final despesaViewModel = DespesaViewModel(
    service: DespesasService(
      Dio(
        BaseOptions(baseUrl: ServicePath.BASEURL.rawValue),
      ),
    ),
  );

  final String ano;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: kPrimaryColor,
        ),
        body: Observer(
          builder: (_) {
            return despesaViewModel.isLoading
                ? const CircularProgressIndicator(color: kPrimaryColor)
                : Column(
                    children: [
                      Text(municipio),
                      DespesaListView(
                        data: despesaViewModel.despesaRequest.data,
                      )
                    ],
                  );
          },
        ),
      ),
    );
  }
}
