import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:percent_indicator/percent_indicator.dart';

class DespesaAnualCard extends StatelessWidget {
  final String ano, lastUpdate;
  final Color progressColor;
  final double percent;
  const DespesaAnualCard({
    Key? key,
    required this.ano,
    required this.lastUpdate,
    required this.progressColor,
    required this.percent,
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
                ano.toUpperCase(),
                style: TextStyle(fontSize: 30, color: progressColor),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 20),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  LinearPercentIndicator(
                    width: size.width * 0.60,
                    animation: true,
                    animationDuration: 1000,
                    lineHeight: 20.0,
                    leading: Text('$percent% '),
                    percent: percent / 100,
                    linearStrokeCap: LinearStrokeCap.butt,
                    progressColor: progressColor,
                  ),
                  const Spacer(),
                  SvgPicture.asset(
                    "assets/icons/ic_navigate_next_24px.svg",
                    color: progressColor,
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 20),
              child: Text(
                lastUpdate,
                style: TextStyle(
                  color: progressColor.withOpacity(0.5),
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
