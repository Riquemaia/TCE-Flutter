import 'package:feneco_fiap_tce_app/feature/utils/constants.dart';
import 'package:flutter/material.dart';

class MunicipioInfoStatus extends StatelessWidget {
  const MunicipioInfoStatus({
    Key? key,
    this.value = 0,
    this.label = 'Sem Texto',
    this.textColor = kPrimaryColor,
  }) : super(key: key);

  final int? value;
  final String label;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const Spacer(),
          Text(
            '$value',
            style: TextStyle(color: textColor, fontSize: 60),
          ),
          Text(
            label.toUpperCase(),
            textAlign: TextAlign.center,
            style: TextStyle(
              color: textColor,
              fontSize: 16,
            ),
            maxLines: 2,
            softWrap: false,
            overflow: TextOverflow.fade,
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
