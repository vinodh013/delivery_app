import 'package:flutter/material.dart';
import 'package:flutter_delivery_app/utils/dimensions.dart';

class BigText extends StatelessWidget {
  final Color? color;
  final String text;
  double size;
  TextOverflow overFlow;

  BigText(
      {Key? key,
      this.color = const Color(0xff332d2b),
      required this.text,
      this.size = 0,
      this.overFlow = TextOverflow.ellipsis})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overFlow,
      maxLines: 1,
      style: TextStyle(
          fontWeight: FontWeight.w400,
          fontFamily: "Roboto",
          color: color,
          fontSize: size == 0 ? Dimensions.font20 : size),
    );
  }
}
