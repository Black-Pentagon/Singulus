import 'package:flutter/material.dart';
import 'package:singulus/global_data.dart';
import 'package:singulus/pages/student/student_homepage.dart';
import 'package:singulus/pages/teacher/teacher_home_page.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  Widget getPageAccToUser(){
    UserType curUser = GlobalData.currentUser;
    if (curUser==UserType.teacher) {return const TeacherHomePage();}
    else if (curUser==UserType.student) {return const StudentHomePage();}
    else {return Container();}
  }

  @override
  Widget build(BuildContext context) {
    return getPageAccToUser();
  }
}





// Row(
// mainAxisAlignment: MainAxisAlignment.center,
// children: [
// MkIconButton(icon: Icons.menu,size: 30,color: contrast,padding: const EdgeInsets.all(10),onTapFunction: () {onMenuBackTap();}),
// SizedBox(width: grw(context, 0.67)),
// MkIconButton(icon: Watchers.gcti(context).icon!,size: 30,color: contrast,padding: const EdgeInsets.all(10),onTapFunction: (){
// Setters.setNextTheme(context);
// },),
// ],
// ),


// class SingulusAppBar extends StatelessWidget {
//   final Function onMenuBackTap;
//   final Widget? headingChild;
//   final String? headingText;
//   final double? headingSize;
//   final EdgeInsets? headingPadding;
//
//   const SingulusAppBar(
//       {Key? key,
//         required this.onMenuBackTap,
//         this.headingChild,
//         this.headingText = "Welcome,",
//         this.headingSize = 65,
//         this.headingPadding})
//       : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     Color themeLight = Watchers.gcfct(context, MkColor.themeLight);
//     Color themeLight2 = Watchers.gcfct(context, MkColor.themeLight2);
//     Color contrast = Watchers.gcfct(context, MkColor.contrast);
//
//     return Container(
//       alignment: Alignment.center,
//       padding: const EdgeInsets.only(top: 30, bottom: 30),
//       decoration: BoxDecoration(
//           borderRadius: const BorderRadius.only(
//               bottomLeft: Radius.circular(50.0),
//               bottomRight: Radius.circular(50.0)),
//           // color: themeLight,
//           gradient: LinearGradient(colors: [themeLight, themeLight2])),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.end,
//         children: [
//           Padding(
//             padding: headingPadding ?? const EdgeInsets.only(top: 0, left: 3),
//             child: headingChild ??
//                 MkText(
//                   text: headingText,
//                   size: headingSize,
//                   googleFont: SingulusFonts.subTitleFont,
//                   textColor: contrast,
//                   fontWeight: FontWeight.bold,
//                 ),
//           ),
//         ],
//       ),
//     );
//   }
// }
