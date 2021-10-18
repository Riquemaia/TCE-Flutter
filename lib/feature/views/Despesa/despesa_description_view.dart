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
      body: Column(
        children: [
          Text(despesa.orgao.toString()),
          Text(despesa.nmFornecedor.toString()),
          Text(despesa.valorDespesa.toString()),
          Text(despesa.idFornecedor.toString()),
          Text(despesa.dataEmissaoDespesa.toString()),
          Text(despesa.numeroEmpenho.toString()),
          Text(despesa.mes.toString()),
        ],
      ),
    );
  }
}
