import 'package:feneco_fiap_tce_app/feature/components/rounded_button.dart';
import 'package:feneco_fiap_tce_app/feature/components/rounded_input_field.dart';
import 'package:feneco_fiap_tce_app/feature/utils/constants.dart';
import 'package:feneco_fiap_tce_app/feature/views/Municipio/municipio_view.dart';
import 'package:flutter/material.dart';

import 'background.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: SingleChildScrollView(
        child: Background(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                width: double.infinity,
                child: const Text(
                  "Login",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: kPrimaryDarkColor,
                    fontSize: 35,
                  ),
                ),
              ),
              const RoundedInputField(
                icon: Icon(
                  Icons.person,
                  color: kPrimaryColor,
                ),
                hintText: "Digite seu e-mail",
              ),
              const RoundedInputField(
                icon: Icon(
                  Icons.person,
                  color: kPrimaryColor,
                ),
                hintText: "Digite seu e-mail",
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: RoundedButton(
                  press: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MunicipioView(),
                    ),
                  ),
                  text: "acessar",
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Image.asset(
                    "assets/images/Logo App.png",
                    height: size.height * 0.10,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
