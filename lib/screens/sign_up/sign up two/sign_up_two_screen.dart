import 'package:colibico_garanhuns/constants.dart';
import 'package:colibico_garanhuns/screens/sign_up/sign%20up%20three/sign_up_three_screen.dart';
import 'package:flutter/material.dart';

class SignUpScreenTwo extends StatelessWidget {
  static const String screenId = 'SignUpTwoScreenId';

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
                  RichText(
                      text: const TextSpan(children: [
                    TextSpan(text: 'Digite o ', style: kBigHeading),
                    const TextSpan(
                        text: 'código ',
                        style: const TextStyle(
                            color: kPurpleColor,
                            fontSize: 48,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold)),
                    TextSpan(text: 'recebido.', style: kBigHeading),
                  ])),
                  _vBox,
                  TextFormField(
                      decoration: kFormStyle('Código', 'Código recebido',
                          Icons.filter_1_outlined)),
                ],
              ),
            ),
            SizedBox(
              width: _size.width,
              height: kDefaultPadding * 1.5,
              child: KGeneralBtn(
                func: () =>
                    Navigator.pushNamed(context, SignUpScreenThree.screenId),
                text: 'Próximo',
              ),
            )
          ],
        ),
      ),
    );
  }
}
