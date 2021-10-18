import 'package:feneco_fiap_tce_app/feature/utils/constants.dart';
import 'package:flutter/material.dart';

import 'package:feneco_fiap_tce_app/feature/models/Despesa/despesa_model.dart';

import '../despesa_description_view.dart';
import 'despesa_card.dart';

class DespesaListView extends StatelessWidget {
  const DespesaListView({
    Key? key,
    this.data,
  }) : super(key: key);

  final List<DespesaModel>? data;

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
                  builder: (context) => DespesaDescriptionView(
                    despesa: data![index],
                  ),
                ),
              );
            },
            child: DespesaCard(
              lastUpdate: DateTime.now().toString(),
              valor: 'R\$ ${data![index].valorDespesa ?? 0.0}',
              mes: data![index].mes ?? 'não definido',
              color: kPrimaryColor,
            ),
          );
        },
      ),
    );
  }
}
