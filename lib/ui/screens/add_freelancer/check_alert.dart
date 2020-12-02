import 'package:changehorizonsfreelancer/helpers/screen_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../constants.dart';

class CheckAlert extends StatefulWidget {
  @override
  _CheckAlertState createState() => _CheckAlertState();
}

class _CheckAlertState extends State<CheckAlert> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15.0))),
      title: Column(
        children: <Widget>[
          Icon(
            Icons.check_circle,
            color: kRightColor,
            size: 80,
          ),
          SizedBox(
            height: ScreenHelper.screenWidth(context, 15.0),
          ),
        ],
      ),
      contentPadding: EdgeInsets.only(
        left: ScreenHelper.screenWidth(context, 35),
        bottom: ScreenHelper.screenWidth(context, 15.0),
      ),
      content: Text(
          'تم إرسال الطلب لمحمد محمد',
          style: Theme.of(context).textTheme.headline6.copyWith(
            fontSize: 20,
            color: Colors.grey,
          )
      ),
    );
  }
}
