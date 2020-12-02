import 'package:changehorizonsfreelancer/ui/widgets/save_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CheckAlert2 extends StatefulWidget {
  @override
  _CheckAlertState createState() => _CheckAlertState();
}

class _CheckAlertState extends State<CheckAlert2> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15.0))),
      title: Column(
        children: <Widget>[
          Icon(Icons.check_circle, color: Colors.pinkAccent, size: 60),
          SizedBox(
            height: 10.0,
          ),
          Text(
            'تمت عملية تحويل 500 من رصيدك ل مقم الخدمة محمد محمد بنجاح.',
            textDirection: TextDirection.rtl,
            style: Theme.of(context)
                .textTheme
                .headline
                .copyWith(color: Colors.grey, fontSize: 14),
          ),
          SizedBox(
            height: 5.0,
          ),
          Center(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SaveButton(
                  onPressed: (){},
                  title: 'تم',
                )
              ],
            ),
          )
        ]

      ),

    );
  }
}