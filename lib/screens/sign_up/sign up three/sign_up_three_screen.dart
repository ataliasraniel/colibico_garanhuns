import 'package:colibico_garanhuns/constants.dart';
import 'package:colibico_garanhuns/screens/sign_up/sign%20up%20done/sign_up_done_screen.dart';
import 'package:flutter/material.dart';

class SignUpScreenThree extends StatelessWidget {
  static const String screenId = 'SignUpThreeScreenId';

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
                    text: 'Defina uma ',
                    purpleText: 'senha',
                  ),
                  _vBox,
                  TextFormField(
                      decoration:
                          kFormStyle('Senha', 'Senha', Icons.lock_outlined)),
                ],
              ),
            ),
            SizedBox(
              width: _size.width,
              height: kDefaultPadding * 1.5,
              child: KGeneralBtn(
                func: () =>
                    Navigator.pushNamed(context, SignUpScreenDone.screenId),
                text: 'Próximo',
              ),
            )
          ],
        ),
      ),
    );
  }
}
