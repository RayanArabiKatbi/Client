import 'package:changehorizonsfreelancer/helpers/screen_helper.dart';
import 'package:changehorizonsfreelancer/ui/widgets/custom_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Bills28 extends StatefulWidget {
  @override
  _Bills28State createState() => _Bills28State();
}

class _Bills28State extends State<Bills28> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: 'الفواتير',
      onBack: (){},
      child: Container(
        child: Column(

          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(35.0),
              child: Row(
          //    mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('الفواتير الحالية',
                 style: Theme.of(context).textTheme.headline5.copyWith(
                  fontSize: 15,
                  fontFamily: 'Tajawal',
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,),
                  ),
                ],
              ),
            ),
           Column(
             children: [
               ListView(
                 children: [
                   ContainerRequests1(context),
                   ContainerRequests1(context),
                 ],
               )
             ],
           ),
            _ButtonBar(),
          ],

        ),

      ),

    );
  }
}

Widget ContainerRequests1(BuildContext context){
  return Container(
    padding: EdgeInsets.symmetric(
      vertical: ScreenHelper.screenHeight(context, 10.0),
      horizontal: ScreenHelper.screenWidth(context, 15.0),
    ),
    width: ScreenHelper.screenWidth(context, 320.0),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.lightBlue.shade50),

    child: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          children: <Widget>[
            Text('اسم الفريلانسر:',
                style: Theme.of(context).textTheme.headline5.copyWith(
                  fontSize: 15,
                  fontFamily: 'Tajawal',
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                )),
            SizedBox(
              width: 30.0,
            ),
            Text(' محمد محمد',
                style: Theme.of(context).textTheme.headline5.copyWith(
                  fontSize: 15,
                  fontFamily: 'Tajawal',
                  color: Colors.blue.shade500,
                )),
          ],
        ),
        SizedBox(
          height: ScreenHelper.screenHeight(context, 10.0),
        ),
        Row(
          children: <Widget>[
            Text('عنوان الطلب:',
                style: Theme.of(context).textTheme.headline5.copyWith(
                  fontSize: 15,
                  fontFamily: 'Tajawal',
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                )),
            SizedBox(
              width: 30.0,
            ),
            Text(' لوريم ايبسوم دولار',
                style: Theme.of(context).textTheme.headline5.copyWith(
                  fontSize: 15,
                  fontFamily: 'Tajawal',
                  color: Colors.blue.shade500,
                )),
          ],
        ),
        Row(
          children: <Widget>[
            Spacer(),
            Icon(Icons.subdirectory_arrow_right,
                size: 15, color: Colors.lightBlue.shade500),
            Text('عرض الفاتورة',
                style: Theme.of(context).textTheme.headline5.copyWith(
                  fontSize: 15,
                  fontFamily: 'Tajawal',
                  color: Colors.lightBlue.shade500,
                )),
            SizedBox(
              height: ScreenHelper.screenHeight(context, 30.0),
            ),
          ],
        ),
      ],
    ),

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

//class ContainerRequests extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Container(
//      padding: EdgeInsets.symmetric(
//        vertical: ScreenHelper.screenHeight(context, 10.0),
//        horizontal: ScreenHelper.screenWidth(context, 15.0),
//      ),
//      width: ScreenHelper.screenWidth(context, 320.0),
//      decoration: BoxDecoration(
//          borderRadius: BorderRadius.circular(10.0),
//          color: Colors.lightBlue.shade50),
//
//      child: Column(
//        mainAxisSize: MainAxisSize.min,
//        crossAxisAlignment: CrossAxisAlignment.start,
//        children: <Widget>[
//          Row(
//            children: <Widget>[
//              Text('اسم الفريلانسر:',
//                  style: Theme.of(context).textTheme.headline5.copyWith(
//                    fontSize: 15,
//                    fontFamily: 'Tajawal',
//                    color: Colors.blue,
//                    fontWeight: FontWeight.bold,
//                  )),
//              SizedBox(
//                width: 30.0,
//              ),
//              Text(' محمد محمد',
//                  style: Theme.of(context).textTheme.headline5.copyWith(
//                    fontSize: 15,
//                    fontFamily: 'Tajawal',
//                    color: Colors.blue.shade500,
//                  )),
//            ],
//          ),
//          SizedBox(
//            height: ScreenHelper.screenHeight(context, 10.0),
//          ),
//          Row(
//            children: <Widget>[
//              Text('عنوان الطلب:',
//                  style: Theme.of(context).textTheme.headline5.copyWith(
//                    fontSize: 15,
//                    fontFamily: 'Tajawal',
//                    color: Colors.blue,
//                    fontWeight: FontWeight.bold,
//                  )),
//              SizedBox(
//                width: 30.0,
//              ),
//              Text(' لوريم ايبسوم دولار',
//                  style: Theme.of(context).textTheme.headline5.copyWith(
//                    fontSize: 15,
//                    fontFamily: 'Tajawal',
//                    color: Colors.blue.shade500,
//                  )),
//            ],
//          ),
//          Row(
//            children: <Widget>[
//              Spacer(),
//              Icon(Icons.subdirectory_arrow_right,
//                  size: 15, color: Colors.lightBlue.shade500),
//              Text('عرض الفاتورة',
//                  style: Theme.of(context).textTheme.headline5.copyWith(
//                    fontSize: 15,
//                    fontFamily: 'Tajawal',
//                    color: Colors.lightBlue.shade500,
//                  )),
//              SizedBox(
//                height: ScreenHelper.screenHeight(context, 30.0),
//              ),
//            ],
//          ),
//        ],
//      ),
//
//    );
//  }
//}
