import 'package:changehorizonsfreelancer/ui/widgets/custom_scaffold.dart';
import 'package:changehorizonsfreelancer/ui/widgets/outlined_textfield.dart';
import 'package:changehorizonsfreelancer/ui/widgets/save_button.dart';
import 'package:changehorizonsfreelancer/ui/widgets/skip_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../constants.dart';

class PersonalInfo extends StatefulWidget {
  @override
  _PersonalInfoState createState() => _PersonalInfoState();
}

class _PersonalInfoState extends State<PersonalInfo> {
  TextEditingController _firstNameController = TextEditingController();
  TextEditingController _lastNameController = TextEditingController();


  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: 'المعلومات الشخصية',
      onBack: () {},
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(kMainPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            _buildTextFieldWithText(
                controller: _firstNameController, title: 'الاسم الأول'),
            SizedBox(
              height: 30.0,
            ),
            _buildTextFieldWithText(
                controller: _lastNameController, title: 'اسم العائلة'),
            SizedBox(
              height: 20.0,
            ),
            Text("اللغة المفضلة للتواصل",
              style: Theme.of(context).textTheme.headline5,
            ),
            //select language
            SizedBox(
              height: 60.0,
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: SaveButton(
                    width: double.maxFinite,
                    title: 'حفظ',
                    onPressed: () {},
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Expanded(
                  child: SkipButton(
                    width: double.maxFinite,
                    title: 'إلغاء',
                    onPressed: () {},
                  ),
                )


              ],
            ),
            SizedBox(
              height: 330.0,
            ),

            _ButtonBar(),



          ],

        ),
      ),

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

Widget _buildTextFieldWithText(
    {TextEditingController controller,
      String title,
      bool last = false}) {
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

      ),
    ],
  );
}

