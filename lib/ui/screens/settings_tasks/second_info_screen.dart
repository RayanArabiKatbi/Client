
import 'package:changehorizonsfreelancer/ui/screens/help/help.dart';
import 'package:changehorizonsfreelancer/ui/screens/my_favorites/my_favorites.dart';
import 'package:changehorizonsfreelancer/ui/screens/requests/default_request_box.dart';
import 'package:changehorizonsfreelancer/ui/screens/settings_tasks/missions_screen.dart';
import 'package:changehorizonsfreelancer/ui/screens/wallet/my_wallet.dart';
import 'package:changehorizonsfreelancer/ui/widgets/custom_scaffold.dart';
import 'package:changehorizonsfreelancer/ui/widgets/icon_button_with_title.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../helpers/screen_helper.dart';
import '../../widgets/header_tile.dart';
import '../../widgets/header_tile_row.dart';
//sevices

class SecondInfoScreen extends StatelessWidget {
  static const String routeName = '/second info screen';

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      onBack: () => Navigator.pop(context),
      title: 'الاعدادات',
      child: Column(
        children: <Widget>[
          SizedBox(
            height: ScreenHelper.screenHeight(context, 10.0),
          ),
          _buildButtonsRow(context),
          SizedBox(
            height: ScreenHelper.screenHeight(context, 10.0),
          ),
          HeaderTile(
            title: 'حسابي',
            children: [
              HeaderTileRow(
                title: 'معلومات الدفع',
                iconData: Icons.web_asset,
              ),
              HeaderTileRow(
                title: 'تقديم شكوى',
                iconData: Icons.error,
              ),
            ],
          ),
          HeaderTile(
            title: 'إعدادات عامة ',
            children: [
              HeaderTileRow(
                  title:  "تعديل رقم الجوال",
                  iconData: Icons.phone,
              ),
              HeaderTileRow(
                title:  "البلد",
                iconData: Icons.circle,
              ),
              HeaderTileRow(
                title:  "اللغة",
                iconData: Icons.language,
              )
            ],
          ),
          HeaderTile(
            title: 'تواصل معنا',
            children: [
              HeaderTileRow(
                title: 'مساعدة',
                iconData: Icons.help,
                external: true,
                onRowTap:()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>Help())),
              ),
              HeaderTileRow(
                title: 'تواصل معنا علي الواتساب',
                iconData: Icons.android,
                external: true,
              ),
            ],
          ),
          SizedBox(
            height: ScreenHelper.screenHeight(context, 10.0),
          ),
          Container(
            padding:
            EdgeInsets.only(right: ScreenHelper.screenWidth(context, 10.0)),
            alignment: Alignment.centerRight,
            child: FlatButton(
              child: Text(
                'تسجيل الخروج',
                style: Theme.of(context).textTheme.headline.copyWith(
                  color: kMiddleColor,
                ),
              ),
              onPressed: () {},
            ),
          ),
          SizedBox(
            height: 40,
          ),
          _ButtonBar(),
        ],
      ),
    );
  }

  Widget _buildButtonsRow(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          child: IconButtonWithTitle(
          //  onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>DefaultRequestsBox())),
            title: 'تتبع الطلبات',
            iconData: Icons.store,
          ),
        ),
        Expanded(
          child: IconButtonWithTitle(
        //    onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>MissionsScreen())),
            title: 'الملف الشخصي',
            iconData: Icons.note,
          ),
        ),
        Expanded(
          child: IconButtonWithTitle(
            onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>MyWallet())),
            title: 'الفواتير',
            iconData: Icons.account_balance_wallet,
          ),
        ),
        Expanded(
          child: IconButtonWithTitle(
            onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>MyFavorites())),
            title: 'مفضلتي',
            iconData: Icons.favorite_border,
          ),
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