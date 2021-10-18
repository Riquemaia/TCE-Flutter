import 'package:feneco_fiap_tce_app/feature/utils/constants.dart';
import 'package:flutter/material.dart';

class Separetor extends StatelessWidget {
  const Separetor({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1,
      color: kPrimaryColor,
      margin: EdgeInsets.symmetric(horizontal: 5),
    );
  }
}
