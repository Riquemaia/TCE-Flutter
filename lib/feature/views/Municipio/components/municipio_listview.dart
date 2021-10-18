import 'package:feneco_fiap_tce_app/feature/utils/constants.dart';
import 'package:flutter/material.dart';

import 'package:feneco_fiap_tce_app/feature/models/Municipio/municipio_model.dart';
import 'package:feneco_fiap_tce_app/feature/views/Despesa/despesa_anual_view.dart';

import 'municipo_card.dart';

class MunicipioListView extends StatelessWidget {
  const MunicipioListView({
    Key? key,
    this.data,
  }) : super(key: key);

  final List<MunicipioModel>? data;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: data!.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DespesaAnualView(
                    municipio: data![index].municipio ?? '',
                  ),
                ),
              );
            },
            child: MunicipioCard(
              municipio: data![index].municipio ?? '',
              lastUpdate: data![index].dataDeAtualizacao ?? '',
              progressColor: kPrimaryColor,
              percent: data![index].porcentagem ?? 0.0,
            ),
          );
        },
      ),
    );
  }
}
