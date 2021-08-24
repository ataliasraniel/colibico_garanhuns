import 'package:colibico_garanhuns/constants.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void _completeLoading() {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.popAndPushNamed(context, 'SignInScreen');
    });
  }

  @override
  void initState() {
    _completeLoading();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
        body: Center(
      child: Container(
        width: _size.width,
        color: kForegroundColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'lib/assets/images/logo.png',
              width: 84,
            ),
            RichText(
              text: const TextSpan(children: [
                TextSpan(
                    text: 'Coli',
                    style: TextStyle(
                        color: kYellowColor,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Montserrat',
                        fontSize: 28)),
                TextSpan(
                    text: 'Bico',
                    style: TextStyle(
                        color: kPurpleColor,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Montserrat',
                        fontSize: 28)),
                TextSpan(
                    text: ' Garanhuns',
                    style: TextStyle(
                        color: kPurpleColor,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Montserrat',
                        fontSize: 28))
              ]),
            ),
            kSeparatorBox,
            const CircularProgressIndicator(),
            kSeparatorBox,
            const Text('versão: 1.0.0')
          ],
        ),
      ),
    ));
  }
}
