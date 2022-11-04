import 'package:flutter/material.dart';

import '../resources/values/app_colors.dart';

class CongratulationsScreen extends StatelessWidget {
  const CongratulationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColorLight,
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(81, 84, 28, 12),
            child:
                Image(image: AssetImage('assets/images/congratulations_screen_img.png')),
          ),
          Text(
            'Congratulations!',
            style: Theme.of(context).textTheme.headline1,
          )
        ],
      ),
    );
  }
}
