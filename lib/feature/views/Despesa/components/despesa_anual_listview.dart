import 'package:feneco_fiap_tce_app/feature/utils/constants.dart';
import 'package:flutter/material.dart';

import 'package:feneco_fiap_tce_app/feature/models/DespesaAnual/despesa_anual_model.dart';

import '../despesa_view.dart';
import 'despesa_anual_card.dart';

class DespesaAnualListView extends StatelessWidget {
  const DespesaAnualListView({
    Key? key,
    this.data,
    required this.municipio,
  }) : super(key: key);

  final List<DespesaAnualModel>? data;
  final String municipio;
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
                  builder: (context) => DespesaView(
                    ano: data![index].ano ?? 'não definido',
                    municipio: municipio,
                  ),
                ),
              );
            },
            child: DespesaAnualCard(
              lastUpdate: DateTime.now().toString(),
              percent: data![index].porcentagem ?? 0.0,
              ano: data![index].ano ?? 'não definido',
              progressColor: kPrimaryColor,
            ),
          );
        },
      ),
    );
  }
}
