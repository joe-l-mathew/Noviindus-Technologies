import 'package:flutter/cupertino.dart';

import '../../../constants/colors.dart';

class BoxWidget extends StatelessWidget {
  final String title;
  final String subTitle;
  final String image;
  final Color bgColor;
  const BoxWidget({
    super.key,
    required this.title,
    required this.subTitle,
    required this.image,
    required this.bgColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 158,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 10.0, bottom: 2, left: 10),
            child: Text(
              title,
              style: TextStyle(
                  color: AppColors.whiteColor,
                  fontSize: 26,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              subTitle,
              style: TextStyle(
                color: AppColors.whiteColor,
                fontSize: 10,
              ),
            ),
          ),
          const Spacer(),
          Row(
            children: [
              const Spacer(),
              Image.asset(image),
            ],
          )
        ],
      ),
    );
  }
}
