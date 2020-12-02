import 'package:changehorizonsfreelancer/helpers/screen_helper.dart';
import 'package:changehorizonsfreelancer/ui/widgets/check_item.dart';
import 'package:changehorizonsfreelancer/ui/widgets/custom_scaffold.dart';
import 'package:changehorizonsfreelancer/ui/widgets/outlined_textfield.dart';
import 'package:changehorizonsfreelancer/ui/widgets/save_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../constants.dart';

class MakeComplaint extends StatefulWidget {
  @override
  _MakeComplaintState createState() => _MakeComplaintState();
}

class _MakeComplaintState extends State<MakeComplaint> {
  TextEditingController _serviceController = TextEditingController();
  TextEditingController _reasonController = TextEditingController();


  void dispose() {
    _serviceController.dispose();
    _reasonController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: 'تقديم شكوى',
      onBack: () {},
      child: Container(
        width: double.infinity,
       // height: ScreenHelper.screenHeight(context, 400),
        padding: EdgeInsets.all(kMainPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Column(
             crossAxisAlignment: CrossAxisAlignment.start,
        //      mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                _buildTextFieldWithText(
                    controller: _serviceController, title: 'الخدمة'),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'سبب الشكوى',
                    style: Theme.of(context).textTheme.headline5.copyWith(
                      fontSize: 11,
                      color: Colors.grey,
                    )
                ),
                Wrap(
                  children: <Widget>[
                    Directionality(
                      textDirection: TextDirection.rtl,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          CheckItem(
                            title: 'سوء سلوك',
                            backgroundColor: Colors.white30,
                            checkValue: false,
                          ),
                          CheckItem(
                            checkValue:  false,
                            backgroundColor: Colors.white30,
                            title: 'عدم التسليم في الموعد المتفق عليه',
                          ),
                          CheckItem(
                            checkValue: false,
                            title: 'خدمة سيئة',
                            backgroundColor: Colors.white30,
                          ),
                          CheckItem(
                            checkValue: false,
                            title: 'أسباب اخري',
                            backgroundColor: Colors.white30,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: ScreenHelper.screenHeight(context, 5),
                ),
                _buildTextFieldWithText(
                    controller: _reasonController,title: 'اكتب السبب هنا'),
                SizedBox(
                  height: ScreenHelper.screenHeight(context, 10),
                ),
                _buildTextFieldWithText(
                    controller: _reasonController,title: 'تعليق'),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: SaveButton(
                    title: 'ارسال',
                    width: 130,
                    onPressed: () {} ,
                  ),
                ),
                SizedBox(
                  height: 170,
                ),
                _ButtonBar(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


Widget _buildTextFieldWithText(
    {TextEditingController controller,
      String title,
      bool last = false,
      bool password = false}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        title,
      //  style: Theme.of(context).textTheme.headline5,
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
