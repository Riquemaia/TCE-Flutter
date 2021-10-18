import 'package:feneco_fiap_tce_app/feature/utils/constants.dart';
import 'package:flutter/material.dart';

import 'package:feneco_fiap_tce_app/feature/models/Despesa/despesa_model.dart';

class DespesaDescriptionView extends StatelessWidget {
  const DespesaDescriptionView({
    Key? key,
    required this.despesa,
  }) : super(key: key);
  final DespesaModel despesa;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
      ),
      body: Center(
        child: Column(
          children: [
            Spacer(),
            Text(
              despesa.orgao.toString(),
              style: style(22.0),
            ),
            Spacer(),
            Text(
              despesa.mes.toString(),
              style: style(22.0),
            ),
            Spacer(),
            Text(
              despesa.evento.toString(),
              style: style(22.0),
            ),
            Spacer(),
            Text(
              despesa.numeroEmpenho.toString(),
              style: style(22.0),
            ),
            Spacer(),
            Text(
              despesa.idFornecedor.toString(),
              style: style(22.0),
            ),
            Spacer(),
            Text(
              despesa.nmFornecedor.toString(),
              style: style(22.0),
            ),
            Spacer(),
            Text(
              despesa.dataEmissaoDespesa.toString(),
              style: style(22.0),
            ),
            Spacer(),
            Text(
              'R\$ ${despesa.valorDespesa.toString()}',
              style: style(22.0),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }

  TextStyle style(double? size) => TextStyle(
        color: kPrimaryColor,
        fontSize: size,
      );
}
