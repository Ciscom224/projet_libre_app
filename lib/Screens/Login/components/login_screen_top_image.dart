import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';

class LoginScreenTopImage extends StatelessWidget {
  const LoginScreenTopImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: defaultPadding * 2),
        Row(
          children: [
            const Spacer(),
            Expanded(
              flex: 2,
              child: Image.asset("assets/icons/logo1.png"),
            ),
            const Spacer(),
          ],
        ),
        Text(
          "\n \n \n \n \n \n LOGIN",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        SizedBox(height: defaultPadding * 2),
      ],
    );
  }
}
