import 'package:feneco_fiap_tce_app/feature/utils/constants.dart';
import 'package:flutter/material.dart';

class LateUpdateContainer extends StatelessWidget {
  const LateUpdateContainer({Key? key, required this.textDate})
      : super(key: key);
  final String textDate;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.13,
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 20.0),
      child: Align(
        alignment: FractionalOffset.bottomCenter,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10.0),
          child: Text(
            textDate.toUpperCase(),
            style: TextStyle(
              color: kPrimaryLightColor.withOpacity(0.5),
            ),
          ),
        ),
      ),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: kPrimaryLightColor.withOpacity(0.5),
            width: 1,
          ),
        ),
      ),
    );
  }
}
