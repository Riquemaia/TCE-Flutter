import 'package:feneco_fiap_tce_app/feature/utils/constants.dart';
import 'package:feneco_fiap_tce_app/feature/views/Welcome/welcome_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UserNotificationBar extends StatelessWidget {
  const UserNotificationBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.2,
      color: kPrimaryColor,
      child: Align(
        alignment: FractionalOffset.topLeft,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              const Text(
                "Ola, Jose",
                style: TextStyle(fontSize: 35, color: Colors.white),
              ),
              const Spacer(),
              GestureDetector(
                child: Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  child: SvgPicture.asset(
                    "assets/icons/ic_notifications_24px.svg",
                    width: 20,
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const WelcomeScreen(),
                    ),
                  );
                },
                child: SvgPicture.asset(
                  "assets/icons/ic_exit_to_app_24px.svg",
                  width: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
