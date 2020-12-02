import 'package:changehorizonsfreelancer/helpers/screen_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Alert12 extends StatefulWidget {
  @override
  _Alert12State createState() => _Alert12State();
}

class _Alert12State extends State<Alert12> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15.0))),
      title: Column(
        children: <Widget>[
      Container(
      padding: EdgeInsets.symmetric(
          vertical: ScreenHelper.screenHeight(context,40.0),
      horizontal: ScreenHelper.screenWidth(context, 40.0),
    ),
    width: ScreenHelper.screenWidth(context, 320.0),
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(20.0),
    color: Colors.lightBlue.shade50),
    child: Column(
     // mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        SizedBox(
          height: 5.0,
        ),
        RowContainer(
            text: 'تفاصيل الطلب',
            subText: ' تصميم تطبيق الكتروني',
            factor: 55.0),
        RowContainer(
            text: ' حالة الطلب',
            subText: '             مكتمل ',
            factor: 38.0),
        RowContainer(text: 'مقدم الخدمة', subText: 'احمد احمد', factor: 63.0),
        RowContainer(text: 'التقييم', subText: 'YYYY-MM-DD', factor: 63.0),

      ],
    ),
    )
        ],
      ),

    );
  }
}

class RowContainer extends StatelessWidget {
  final String text;
  final String subText;
  final double factor;
  RowContainer(
      {@required this.text, @required this.subText, @required this.factor});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Text(
              text,
              style: Theme.of(context).textTheme.headline.copyWith(
                fontSize: 15,
                fontFamily: 'Tajawal',
                color: Colors.grey.shade600,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              width: ScreenHelper.screenWidth(context, factor),
            ),
            Text(subText,
                style: Theme.of(context).textTheme.headline.copyWith(
                  fontSize: 15,
                  fontFamily: 'Tajawal',
                  color: Colors.grey.shade500,
                  fontWeight: FontWeight.bold,
                )),
          ],
        ),
        SizedBox(
          height: ScreenHelper.screenHeight(context, 10.0),
        ),
      ],
    );
  }
}
