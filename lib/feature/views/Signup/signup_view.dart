import 'package:feneco_fiap_tce_app/feature/components/rounded_button.dart';
import 'package:feneco_fiap_tce_app/feature/utils/constants.dart';
import 'package:feneco_fiap_tce_app/feature/views/Welcome/welcome_view.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var spacing = size.height * 0.03;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            const Spacer(),
            const Text(
              "Para o primeiro acesso encaminhar email para equipe Feneco ou entrar em contato com Administrador",
              style: TextStyle(
                  fontSize: 35,
                  color: kPrimaryColor,
                  fontWeight: FontWeight.w200),
            ),
            const Spacer(),
            RoundedButton(
                text: "ADMINISTRADOR",
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const WelcomeScreen(),
                    ),
                  );
                }),
            SizedBox(height: spacing),
            RoundedButton(
              text: "EQUIPE FENECO",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const WelcomeScreen(),
                  ),
                );
              },
              color: kSecundaryColor,
              textColor: kPrimaryColor,
            ),
            const Spacer(),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Image.asset(
                  "assets/images/Logo App.png",
                  height: size.height * 0.45,
                ),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
