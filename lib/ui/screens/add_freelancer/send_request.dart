import 'package:changehorizonsfreelancer/ui/widgets/custom_scaffold.dart';
import 'package:changehorizonsfreelancer/ui/widgets/outlined_textfield.dart';
import 'package:changehorizonsfreelancer/ui/widgets/save_button.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class SendRequest extends StatefulWidget {
  @override
  _SendRequestState createState() => _SendRequestState();
}

class _SendRequestState extends State<SendRequest> {
  TextEditingController _requestNameController = TextEditingController();
  TextEditingController _requestDetailController = TextEditingController();


  void dispose() {
    _requestNameController.dispose();
    _requestDetailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: 'إرسال طلب عمل',
      onBack: ()  {},
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(kMainPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _buildTextFieldWithText(
                controller: _requestNameController, title: 'اسم الطلب'),
            SizedBox(
              height: 30.0,
            ),
            _buildHeader(header: 'تفاصيل الطلب'),
            OutlinedTextField(
              controller: _requestDetailController,
              maxChars: 1000,
              expanded: true,
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: SaveButton(
                    // width: double.maxFinite,
                    title: 'إرسال',
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 270.0,
            ),
            _ButtonBar(),
          ],
        ),
      ),
    );
  }
}


Widget _buildHeader({@required String header}) {
  return Padding(
    padding: const EdgeInsets.only(bottom: kMainPadding - kInPadding),
    child: Text(
      header,
   //   style: Theme.of(context).textTheme.headline,
    ),
  );
}


Widget _ButtonBar(){
  return Container(
    child: Row(
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
      TextField(

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

