import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'package:feneco_fiap_tce_app/core/services/service_path.dart';

import 'package:feneco_fiap_tce_app/feature/services/Municipios/municipio_service.dart';
import 'package:feneco_fiap_tce_app/feature/utils/constants.dart';
import 'package:feneco_fiap_tce_app/feature/views_models/Municipio/municipio_view_model.dart';

import 'components/municipio_listview.dart';
import 'components/municipio_top_bar.dart';
import 'components/municipio_top_bar_skeleton_loader.dart';

class MunicipioView extends StatelessWidget {
  MunicipioView({Key? key}) : super(key: key);

  final municipioViewModel = MunicipioViewModel(
    service: MunicipioService(
      Dio(
        BaseOptions(baseUrl: ServicePath.BASEURL.rawValue),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Observer(
              builder: (_) {
                return municipioViewModel.isLoading
                    ? const MunicipioTopBarSkecketonLoader()
                    : MunicipioTopBar(municipioViewModel: municipioViewModel);
              },
            ),
            Observer(
              builder: (_) {
                return municipioViewModel.isLoading
                    ? const CircularProgressIndicator(color: kPrimaryColor)
                    : MunicipioListView(
                        data: municipioViewModel.municipioRequest.data);
              },
            ),
          ],
        ),
      ),
    );
  }
}
