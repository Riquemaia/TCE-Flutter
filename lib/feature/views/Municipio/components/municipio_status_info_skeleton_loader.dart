import 'package:feneco_fiap_tce_app/feature/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:skeleton_text/skeleton_text.dart';

class MunicipioInfoStatusSkecketonLoader extends StatelessWidget {
  const MunicipioInfoStatusSkecketonLoader({
    Key? key,
    this.label = 'Sem Texto',
    this.textColor = kPrimaryColor,
  }) : super(key: key);

  final String label;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const Spacer(),
          Center(
            child: SkeletonAnimation(
              borderRadius: BorderRadius.circular(10.0),
              child: Container(
                height: 75,
                width: MediaQuery.of(context).size.width * 0.15,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.grey[300]),
              ),
            ),
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
