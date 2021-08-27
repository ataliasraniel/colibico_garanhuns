import 'package:colibico_garanhuns/constants.dart';
import 'package:flutter/material.dart';

class SignUpScreenDone extends StatelessWidget {
  static const String screenId = 'SignUpDoneScreenId';

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
                    TextSpan(text: 'Seu ', style: kBigHeading),
                    const TextSpan(
                        text: 'cadastro ',
                        style: const TextStyle(
                            color: kPurpleColor,
                            fontSize: 48,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold)),
                    TextSpan(text: 'foi concluído.', style: kBigHeading),
                  ])),
                  Image.asset('lib/assets/images/done.png'),
                  _vBox,
                  const PText(
                      text:
                          'Agora temos de fazer alguns ajustes iniciais, vamos?')
                ],
              ),
            ),
            SizedBox(
              width: _size.width,
              height: kDefaultPadding * 1.5,
              child: KGeneralBtn(
                func: () {},
                text: 'Próximo',
              ),
            )
          ],
        ),
      ),
    );
  }
}
