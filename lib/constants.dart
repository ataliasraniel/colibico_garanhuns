import 'package:flutter/material.dart';

const Color kDetailColor = Color(0xFF343A40);
const Color kPurpleColor = Color(0xFF7952B3);
const Color kForegroundColor = Colors.white;
const Color kYellowColor = Color(0xFFF9DC1A);
const Color kBgColor = Color(0xFFE1E8EB);
const Color kGreyColor = Colors.grey;
const double kDefaultPadding = 40;

//TEXT STYLES
const kBigHeading = TextStyle(
    fontWeight: FontWeight.bold,
    color: kDetailColor,
    fontSize: 48,
    fontFamily: 'Montserrat');

//STYLES COMPONENTS
const kSeparatorBox = SizedBox(
  height: kDefaultPadding,
);

class KGeneralBtn extends StatelessWidget {
  final String? text;
  final VoidCallback? func;
  const KGeneralBtn({Key? key, this.text, this.func}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: func,
        child: Text(text!,
            style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 24)),
        style: ElevatedButton.styleFrom(primary: kDetailColor));
  }
}

class KGeneralTextBtn extends StatelessWidget {
  final String? text;
  final VoidCallback? func;
  const KGeneralTextBtn({Key? key, this.text, this.func}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: func,
        child: Text(
          text!,
          style:
              const TextStyle(color: kPurpleColor, fontWeight: FontWeight.w700),
        ));
  }
}

class KThinTextBtn extends StatelessWidget {
  final String? text;
  final VoidCallback? func;
  const KThinTextBtn({Key? key, this.text, this.func}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: func,
        child: Text(
          text!,
          style:
              const TextStyle(color: kPurpleColor, fontWeight: FontWeight.w400),
        ));
  }
}

InputDecoration kFormStyle(String label, String hint, IconData icon) {
  return InputDecoration(
      labelText: label,
      hintText: hint,
      prefixIcon: Icon(
        icon,
        color: kDetailColor,
      ),
      labelStyle:
          const TextStyle(color: kGreyColor, fontWeight: FontWeight.bold),
      focusedBorder:
          const OutlineInputBorder(borderSide: BorderSide(color: kPurpleColor)),
      border: const OutlineInputBorder(
          borderSide: BorderSide(color: kDetailColor)));
}
