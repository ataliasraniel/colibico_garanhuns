import 'package:colibico_garanhuns/constants.dart';
import 'package:colibico_garanhuns/screens/sign_up/sign%20up%20two/sign_up_two_screen.dart';
import 'package:flutter/material.dart';

class SignUpScreenOne extends StatelessWidget {
  static const String screenId = 'SignUpOneScreen';
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    SizedBox _vBox = const SizedBox(height: kDefaultPadding);
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: const EdgeInsets.symmetric(
            horizontal: kDefaultPadding, vertical: kDefaultPadding),
        color: kForegroundColor,
        child: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  const KBigHeadingTwoColors(
                    text: 'Qual é o seu ',
                    purpleText: 'e-mail?',
                  ),
                  _vBox,
                  TextFormField(
                      decoration: kFormStyle(
                          'E-mail', 'Seu e-mail', Icons.mail_outline)),
                  _vBox,
                  const PText(
                    text:
                        'Vamos enviar um código de verificação para o seu e-mail, tudo bem?',
                  )
                ],
              ),
            ),
            SizedBox(
              width: _size.width,
              height: kDefaultPadding * 1.5,
              child: KGeneralBtn(
                func: () =>
                    Navigator.pushNamed(context, SignUpScreenTwo.screenId),
                text: 'Próximo',
              ),
            )
          ],
        ),
      ),
    );
  }
}
