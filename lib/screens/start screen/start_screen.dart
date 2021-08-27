import 'package:colibico_garanhuns/constants.dart';
import 'package:colibico_garanhuns/screens/sign_up/sign_up_one_screen/sign_up_one.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  static const String screenId = 'StartScreen';

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: kForegroundColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: kDefaultPadding, vertical: kDefaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BigHeadingTwoColors(),
                  // Row(
                  //   children: [
                  //     const Icon(Icons.place_outlined, color: kPurpleColor),
                  //     TextButton(
                  //       onPressed: () {},
                  //       child: const Text('Garanhuns - Brasil'),
                  //     ),
                  //   ],
                  // ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ChoiceHolder(
                          func: () => Navigator.pushNamed(
                              context, SignUpScreenOne.screenId),
                          text: 'Quero contratar',
                          imgPath: 'lib/assets/images/boss.png'),
                      ChoiceHolder(
                          func: () {},
                          text: 'Quero Trabalhar',
                          imgPath: 'lib/assets/images/worker.png')
                    ],
                  ),
                  const SizedBox(
                    height: kDefaultPadding,
                  ),
                  Center(
                      child: Column(
                    children: [
                      const Text('Já está cadastrado?'),
                      KGeneralTextBtn(
                          text: 'Fazer login',
                          func: () =>
                              Navigator.pushNamed(context, 'SignInScreen')),
                    ],
                  ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BigHeadingTwoColors extends StatelessWidget {
  const BigHeadingTwoColors({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: const TextSpan(children: [
      TextSpan(text: 'O que você procura? Escolha sua ', style: kBigHeading),
      TextSpan(
          text: 'preferência',
          style: TextStyle(
              color: kPurpleColor,
              fontSize: 48,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.bold)),
    ]));
  }
}

class ChoiceHolder extends StatelessWidget {
  final String? text;
  final String? imgPath;
  final VoidCallback? func;
  const ChoiceHolder({
    Key? key,
    this.text,
    this.imgPath,
    this.func,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          height: 184,
          child: Image.asset(
            imgPath!,
            width: 196,
          ),
        ),
        SizedBox(
          height: 48,
          width: _size.width / 3,
          child: ElevatedButton(
            onPressed: func,
            child: Text(text!),
            style: ElevatedButton.styleFrom(primary: kDetailColor),
          ),
        )
      ],
    );
  }
}
