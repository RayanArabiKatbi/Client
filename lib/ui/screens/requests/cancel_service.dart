import 'package:changehorizonsfreelancer/helpers/screen_helper.dart';
import 'package:changehorizonsfreelancer/ui/widgets/save_button.dart';
import 'package:changehorizonsfreelancer/ui/widgets/skip_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../constants.dart';

class CanecelAlert extends StatefulWidget {
  @override
  _CanecelAlertState createState() => _CanecelAlertState();
}

class _CanecelAlertState extends State<CanecelAlert> {
  @override
  Widget build(BuildContext context) {
    showMaterialConfirmRefuseDialog() {
      showDialog(context: context, builder: (_) => ConfrimTheRefuse());
    }

    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(15.0))),
            title: Icon(Icons.error_outline, color: Colors.pinkAccent, size: 60),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Text(
                  'من خلال إلغاء هذه الخدمة ،لن يعمل مقدم الخدمة عليها بعد الان.هل انت متأكد من إلغاء الخدمة؟',
                  textDirection: TextDirection.rtl,
                  style: Theme.of(context)
                      .textTheme
                      .headline
                      .copyWith(color: Colors.grey, fontSize: 13),
                ),
                SizedBox(
                  height: ScreenHelper.screenHeight(context, 10.0),
                ),
              Wrap(
                children: [
                  Row(
              children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: SkipButton(
                        width: 110,
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        color: Colors.pinkAccent,
                        title: 'لست متأكد',
                      ),
                    ),
                    SizedBox(width: 5),
                    Expanded(
                      flex: 1,
                      child: SaveButton(
                        width: 110,
                        onPressed: () {
                          showMaterialConfirmRefuseDialog();
                        },
                        backgroundColor: Colors.pinkAccent,
                        title: 'نعم متأكد',
                      ),
                    ),
            ]
                  )

                ],
              ),
              ],

            ),

          ),

        ),


      ),

    );
  }
}

class ConfrimTheRefuse extends StatelessWidget {
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
          'تم إيقاف الخدمة',
          style: Theme.of(context).textTheme.headline5.copyWith(
            fontSize: 30,
            color: Colors.grey,
          )
      ),
    );
  }
}
