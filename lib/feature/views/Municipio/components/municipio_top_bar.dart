import 'package:feneco_fiap_tce_app/feature/utils/constants.dart';
import 'package:feneco_fiap_tce_app/feature/views_models/Municipio/municipio_view_model.dart';
import 'package:flutter/material.dart';

import 'last_update_container.dart';
import 'municipio_status_bar.dart';
import 'municipio_status_info.dart';
import 'separetor.dart';
import 'user_notification_bar.dart';

class MunicipioTopBar extends StatelessWidget {
  const MunicipioTopBar({
    Key? key,
    required this.municipioViewModel,
  }) : super(key: key);

  final MunicipioViewModel municipioViewModel;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            const UserNotificationBar(),
            LateUpdateContainer(
              textDate: 'ultima visita em ${DateTime.now()}',
            ),
          ],
        ),
        MunicipioStatusBar(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MunicipioInfoStatus(
                value: municipioViewModel.municipioRequest.emConformidade,
                label: 'Em\nconformidade',
              ),
              const Separetor(),
              MunicipioInfoStatus(
                value: municipioViewModel.municipioRequest.processosPendente,
                label: 'Processo\npendente',
                textColor: kSecundaryColor,
              ),
              const Separetor(),
              MunicipioInfoStatus(
                value: municipioViewModel.municipioRequest.foraDeConformidade,
                label: 'Fora de\nconformidade',
                textColor: Colors.red,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
