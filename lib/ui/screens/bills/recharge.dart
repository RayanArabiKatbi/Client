import 'package:changehorizonsfreelancer/ui/widgets/check_item.dart';
import 'package:changehorizonsfreelancer/ui/widgets/outlined_textfield.dart';
import 'package:changehorizonsfreelancer/ui/widgets/save_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Recharge extends StatefulWidget {
  @override
  _RechargeState createState() => _RechargeState();
}

class _RechargeState extends State<Recharge> {
  int _value = 1;
  TextEditingController _amountController = TextEditingController();
  TextEditingController _fullNameCardController = TextEditingController();
  TextEditingController _detailCardController = TextEditingController();


  void dispose() {
    _amountController.dispose();
    _fullNameCardController.dispose();
    _detailCardController.dispose();

    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("شحن الرصيد",
          textDirection: TextDirection.rtl,
          style: Theme
              .of(context)
              .textTheme
              .headline5
              .copyWith(
            fontSize: 15,
            fontFamily: 'Tajawal',
            color: Colors.blue,
            fontWeight: FontWeight.bold,),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'بطاقة ائتمانية',
                  style: Theme
                      .of(context)
                      .textTheme
                      .headline5
                      .copyWith(
                    fontSize: 15,
                    fontFamily: 'Tajawal',
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                DropdownButton(
                    value: _value,
                    items: [
                      DropdownMenuItem(
                        child: Text("PayPal"),
                        value: 1,
                      ),
                      DropdownMenuItem(
                        child: Text("قسيمة شراء"),
                        value: 2,
                      ),
                    ],
                    onChanged: (value) {
                      setState(() {
                        _value = value;
                      });
                    }
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            _buildTextFieldWithText(
                controller: _amountController, title: 'المبلغ'),
            SizedBox(
              height: 20.0,
            ),
            _buildTextFieldWithText(
                controller: _fullNameCardController, title: 'الاسم الكامل على البطاقة'),
            SizedBox(
              height: 20.0,
            ),
            _buildTextFieldWithText(
                controller: _detailCardController, title: 'بيانات البطاقة الائتمانية'),
            SizedBox(
              height: 20.0,
            ),
            CheckItem(
              checkValue:  false,
              backgroundColor: Colors.white30,
              title: 'احفظ البطاقة لتسهيل الدفع في المستقبل',
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
            //  mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Icon(
                  Icons.stars,
                  color: Colors.green,
                  size: 30,
                ),
                Text('ادفع بأمان اتصالك مشفر ومحمي',
                textDirection: TextDirection.rtl,),
                SizedBox(
                  height: 20.0,
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              children: [
                Expanded(
                  child: SaveButton(
                    //  width: 110,
                    onPressed: () {},
                    //     backgroundColor: Colors.pink.shade200,
                    title: 'شحن الرصيد',
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 150.0,
            ),
            _ButtonBar(),
          ],
        ),
      ),

    );
  }

  Widget _buildTextFieldWithText({TextEditingController controller,
    String title,
    bool last = false,
    bool password = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Text(
          title,
      style: Theme
          .of(context)
          .textTheme
          .headline5
          .copyWith(
        fontSize: 15,
        fontFamily: 'Tajawal',
        color: Colors.blue,
        fontWeight: FontWeight.bold,)
//          style: Theme
//              .of(context)
//              .textTheme
//              .headline5,
        ),
        SizedBox(
          height: 10,
        ),
        OutlinedTextField(
          controller: controller,
          textInputAction: last ? TextInputAction.done : TextInputAction.next,
          password: password,
        ),
      ],
    );
  }
}


Widget _ButtonBar(){
  return Container(
    child: Row(
      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Divider(
          height: 1,
          thickness: 3,
        ),
        Expanded(
          child:  Icon(Icons.home, color: Colors.grey, size: 40),
        ),
        Expanded(
          child:  Icon(Icons.message, color: Colors.grey, size: 40),
        ),
        Expanded(
          child:  Icon(Icons.person, color: Colors.grey, size: 40),
        ),
        Expanded(
          child:  Icon(Icons.settings, color: Colors.grey, size: 40),
        ),

      ],

    ),
  );
}