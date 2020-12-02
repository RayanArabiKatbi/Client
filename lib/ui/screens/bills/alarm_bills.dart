import 'package:changehorizonsfreelancer/helpers/screen_helper.dart';
import 'package:changehorizonsfreelancer/ui/widgets/custom_radio_tile.dart';
import 'package:changehorizonsfreelancer/ui/widgets/save_button.dart';
import 'package:changehorizonsfreelancer/ui/widgets/skip_button.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class BillAlarm extends StatefulWidget {
  @override
  _BillAlarmState createState() => _BillAlarmState();
}

class _BillAlarmState extends State<BillAlarm> {
  int _selectedRadio = 0;
  Widget _buildRadio({int radioNumber, String title}) {
    return CustomRadioTile(
      title: title,
      value: radioNumber,
      selectedValue: _selectedRadio,
      onChange: (newValue) {
        setState(() {
          _selectedRadio = newValue;
        }
        );
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(15.0))
        ),
      content: Container(
        width: 120,
        height: 300,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(' محمد محمد',
                   // textDirection: TextDirection.rtl,
                    style: Theme.of(context).textTheme.headline5.copyWith(
                      fontSize: 15,
                      fontFamily: 'Tajawal',
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    )),
                 Spacer(flex: 2),
                Text('اسم الفريلانسر',
                    textDirection: TextDirection.rtl,
                    style: Theme.of(context).textTheme.headline5.copyWith(
                      fontSize: 15,
                      fontFamily: 'Tajawal',
                      color: Colors.blue.shade500,
                    )),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(' لوريم ايبسوم',
                    // textDirection: TextDirection.rtl,
                    style: Theme.of(context).textTheme.headline5.copyWith(
                      fontSize: 15,
                      fontFamily: 'Tajawal',
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    )),
                Spacer(flex: 2),
                Text('عنوان الطلب',
                    textDirection: TextDirection.rtl,
                    style: Theme.of(context).textTheme.headline5.copyWith(
                      fontSize: 15,
                      fontFamily: 'Tajawal',
                      color: Colors.blue.shade500,
                    )),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text('500',
                    // textDirection: TextDirection.rtl,
                    style: Theme.of(context).textTheme.headline5.copyWith(
                      fontSize: 15,
                      fontFamily: 'Tajawal',
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    )),
                Spacer(flex: 2),
                Text('السعر',
                    textDirection: TextDirection.rtl,
                    style: Theme.of(context).textTheme.headline5.copyWith(
                      fontSize: 15,
                      fontFamily: 'Tajawal',
                      color: Colors.blue.shade500,
                    )),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(' 12/5/2020',
                    // textDirection: TextDirection.rtl,
                    style: Theme.of(context).textTheme.headline5.copyWith(
                      fontSize: 15,
                      fontFamily: 'Tajawal',
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    )),
                Spacer(flex: 2),
                Text('موعد التسليم',
                    textDirection: TextDirection.rtl,
                    style: Theme.of(context).textTheme.headline5.copyWith(
                      fontSize: 15,
                      fontFamily: 'Tajawal',
                      color: Colors.blue.shade500,
                    )),
              ],
            ),

            SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  'طريقة الدفع',
                  textDirection: TextDirection.rtl,
                  style: Theme.of(context).textTheme.headline5.copyWith(
                    fontSize: 15,
                    fontFamily: 'Tajawal',
                    color: Colors.blue.shade500,
                  ),
                )
              ],
            ),

//          SizedBox(
//            height: 20,
//          ),
            Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
              children: <Widget>[

                _buildRadio(title: 'عند الاستلام', radioNumber: 1),
//
                _buildRadio(title: 'الكتروني (بالبطاقة)', radioNumber: 2),
              ],
            ),
            SizedBox(
              height: 5.0,
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: SaveButton(
                    //      width: double.minPositive,
                    title: 'تأكيد',
                    onPressed: () {},
                  ),
                ),
                SizedBox(
                  width: kMainPadding,
                ),
                Expanded(
                  child: SkipButton(
                    //     width: double.minPositive,
                    title: 'إلغاء',
                    onPressed: () {
                    },
                  ),
                )
              ],
            ),



          ],

         ),
      ),

    );


  }
}

