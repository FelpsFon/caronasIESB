import 'package:caronapp/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:caronapp/widgets/customtextfield.dart';
import 'package:caronapp/widgets/custombutton.dart';

showAlertDialog(BuildContext context) {
  Widget okButton = TextButton(
    child: const Text("OK"),
    onPressed: () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Login()));
    },
  );
  AlertDialog alert = AlertDialog(
    title: const Text("Recuperação de senha"),
    content: const Text("Foi enviado um e-mail para o endereço informado."),
    actions: [
      okButton,
    ],
  );
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

class EsqueciSenha extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFF5757),
      body: ListView(
        children: [
          Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 80, left: 40.0, right: 40.0, bottom: 80.0),
                        child: Image.asset(
                          'assets/images/vemjunto.png',
                          width: 280,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(left: 40.0),
                            child: Text(
                              'Esqueceu sua senha?',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          const CustomTextField(
                            labelTextCustom: 'E-mail de cadastro',
                            keyboardTypeCustom: TextInputType.emailAddress,
                            backgroundColorCustom: Colors.white,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 8.0, left: 40.0),
                            child: CustomButton(
                              text: 'Recuperar',
                              onPressed: () {
                                showAlertDialog(context);
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}