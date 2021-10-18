import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DespesaCard extends StatelessWidget {
  final String mes, valor, lastUpdate;
  final Color color;
  const DespesaCard({
    Key? key,
    required this.mes,
    required this.lastUpdate,
    required this.color,
    required this.valor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(bottom: 5),
      width: size.width * 0.9,
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 20, bottom: 20),
              child: Text(
                mes.toUpperCase(),
                style: TextStyle(fontSize: 30, color: color),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 20),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Text(
                    valor.toUpperCase(),
                    style: TextStyle(fontSize: 30, color: color),
                  ),
                  const Spacer(),
                  SvgPicture.asset(
                    "assets/icons/ic_navigate_next_24px.svg",
                    color: color,
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 20),
              child: Text(
                lastUpdate,
                style: TextStyle(
                  color: color.withOpacity(0.5),
                  fontSize: 15,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
