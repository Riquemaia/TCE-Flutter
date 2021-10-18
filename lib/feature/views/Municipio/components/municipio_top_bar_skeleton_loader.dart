import 'package:feneco_fiap_tce_app/feature/utils/constants.dart';
import 'package:feneco_fiap_tce_app/feature/views/Municipio/components/user_notification_bar_skeleleton_loader.dart';
import 'package:flutter/material.dart';

import 'last_update_container.dart';
import 'municipio_status_bar.dart';
import 'municipio_status_info_skeleton_loader.dart';
import 'separetor.dart';

class MunicipioTopBarSkecketonLoader extends StatelessWidget {
  const MunicipioTopBarSkecketonLoader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            const UserNotificationBarSckeletonLoader(),
            LateUpdateContainer(
              textDate: 'ultima visita em ${DateTime.now()}',
            ),
          ],
        ),
        MunicipioStatusBar(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              MunicipioInfoStatusSkecketonLoader(
                label: 'Em\nconformidade',
              ),
              Separetor(),
              MunicipioInfoStatusSkecketonLoader(
                label: 'Processo\npendente',
                textColor: kSecundaryColor,
              ),
              Separetor(),
              MunicipioInfoStatusSkecketonLoader(
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
