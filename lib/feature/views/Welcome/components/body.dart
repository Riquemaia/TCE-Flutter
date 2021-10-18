import 'package:feneco_fiap_tce_app/feature/components/rounded_button.dart';
import 'package:feneco_fiap_tce_app/feature/utils/constants.dart';
import 'package:feneco_fiap_tce_app/feature/views/Login/login_view.dart';
import 'package:feneco_fiap_tce_app/feature/views/Signup/signup_view.dart';
import 'package:flutter/material.dart';

import 'background.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var spacing = size.height * 0.03;
    return SafeArea(
      child: SingleChildScrollView(
        child: Background(
          child: Column(
            children: [
              SizedBox(height: spacing),
              const SizedBox(
                width: double.infinity,
                child: Text(
                  "Acesso restrito",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: kPrimaryDarkColor,
                    fontSize: 25,
                  ),
                ),
              ),
              SizedBox(height: spacing),
              RoundedButton(
                press: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginScreen(),
                  ),
                ),
                text: "Entrar",
              ),
              SizedBox(height: spacing),
              RoundedButton(
                press: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SignUpScreen(),
                  ),
                ),
                text: "Primeiro Acesso",
                color: kSecundaryColor,
              ),
              SizedBox(height: spacing),
              Align(
                alignment: Alignment.bottomCenter,
                child: Image.asset(
                  "assets/images/Logo App.png",
                  height: size.height * 0.15,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
