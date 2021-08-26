import 'package:colibico_garanhuns/constants.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  static const String screenId = 'SignInScreen';

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: kForegroundColor,
      body: Center(
        child: Container(
          height: _size.height / 1.3,
          color: kForegroundColor,
          child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: kDefaultPadding, vertical: kDefaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                RichText(
                    text: const TextSpan(children: [
                  TextSpan(text: 'Bem-vindo. ', style: kBigHeading),
                  TextSpan(text: 'Faça ', style: kBigHeading),
                  TextSpan(
                      text: 'login ',
                      style: TextStyle(
                          color: kPurpleColor,
                          fontSize: 48,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold)),
                  TextSpan(text: 'para continuar', style: kBigHeading)
                ])),
                TextFormField(
                    decoration:
                        kFormStyle('E-mail', 'Seu e-mail', Icons.mail_outline)),
                TextFormField(
                    decoration:
                        kFormStyle('Senha', 'Sua senha', Icons.lock_outline)),
                SizedBox(
                  height: kDefaultPadding * 1.5,
                  width: _size.width,
                  child: KGeneralBtn(
                    text: 'Entrar',
                    func: () {},
                  ),
                ),
                KThinTextBtn(text: 'Esqueceu a senha?', func: () {}),
                Center(child: KGeneralTextBtn(text: 'Cadastre-se', func: () {}))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
