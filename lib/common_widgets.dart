import 'package:expandable/expandable.dart';
import 'package:mk_flutter_helper/mk_flutter_helper.dart';
import 'package:flutter/material.dart';
import 'package:mk_flutter_helper/relative_dimension.dart';
// import 'package:flutter/material.dart' hide BoxDecoration,BoxShadow;
// import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'global_data.dart';
import 'mk_theme_provider.dart';

class SingulusAppBar extends StatefulWidget {
  final Widget? headingChild;
  final String? headingText;
  final double? headingSize;
  final EdgeInsets? headingPadding;
  final Gradient? gradient;
  final EdgeInsets? internalPadding;

  const SingulusAppBar(
      {Key? key,
        this.headingChild,
        this.headingText = "Welcome,",
        this.headingSize = 65,
        this.headingPadding, this.gradient, this.internalPadding})
      : super(key: key);

  @override
  State<SingulusAppBar> createState() => _SingulusAppBarState();
}

class _SingulusAppBarState extends State<SingulusAppBar> {


  @override
  Widget build(BuildContext context) {
    Color themeLight = Watchers.gcfct(context, MkColor.themeLight);
    Color themeLight2 = Watchers.gcfct(context, MkColor.themeLight2);
    Color contrast = Watchers.gcfct(context, MkColor.contrast);

    return Container(
      alignment: Alignment.center,
      padding: widget.internalPadding??const EdgeInsets.only(top: 35, bottom: 35),
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(25)),
          gradient: widget.gradient??LinearGradient(colors: [themeLight, themeLight2])),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: widget.headingPadding ?? const EdgeInsets.only(top: 0, left: 3),
            child: widget.headingChild ??MkText(
                  text: widget.headingText,
                  size: widget.headingSize,
                  googleFont: SingulusFonts.blinker,
                  textColor: contrast,
                  fontWeight: FontWeight.bold,
                ),
          ),
        ],
      ),
    );
  }
}

class Tile1 extends StatefulWidget {
  final Widget? child;
  final Color? color1;
  final Color? shadowColor;
  final double height,width;
  final EdgeInsets? internalPadding;
  final EdgeInsets? externalPadding;
  final GestureTapCallback? onTapFunc;
  final ImageProvider? bgImage;

  const Tile1({
    Key? key, this.child, this.color1, this.shadowColor, this.height=100, this.width=180, this.internalPadding, this.externalPadding, this.onTapFunc, this.bgImage
  }) : super(key: key);

  @override
  State<Tile1> createState() => _Tile1State();
}

class _Tile1State extends State<Tile1>{
  bool _isTapped = false;

@override
  Widget build(BuildContext context) {
  Color purple = Watchers.gcfct(context, MkColor.purple);

  return Listener(
      onPointerDown: (PointerDownEvent pointerDownEvent) => setState(() => _isTapped = true),
      onPointerUp: (PointerUpEvent pointerUpEvent) => setState(() => _isTapped = false),
      child: GestureDetector(onTap: widget.onTapFunc,
        child: MkAnimated(animationDuration: const Duration(milliseconds: 0),//4
          child: Padding(
            padding: widget.externalPadding?? EdgeInsets.zero,
            child: AnimatedContainer(
              alignment: Alignment.center,
              height: (_isTapped)?widget.height-5:widget.height,
              width: (_isTapped)?widget.width-5:widget.width,
              decoration: BoxDecoration(
                image: DecorationImage(image: widget.bgImage??GlobalData.principalBg,fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(25),
                boxShadow: (_isTapped)?[]:[BoxShadow(
                  color: widget.shadowColor??purple,
                  offset: const Offset(3,3),
                  blurRadius: 0,
                  spreadRadius: 0,
                )]
              ),
              duration: const Duration(milliseconds: 100),
              child: widget.child
            ),
          ),
        ),
      ),
    );
  }
}

DateTime today = DateTime(2022,8,26);
class Day{
  static const String mon = 'Mon';
  static const String tue = 'Tue';
  static const String wed = 'Wed';
  static const String thur = 'Thu';
  static const String fri = 'Fri';
  static const String sat = 'Sat';
  static const String sun = 'Sun';
  static const List<String> calenderDays =[mon,tue,wed,thur,fri,sat,sun];
}

Period noPeriod = Period(index: 0, number: '1st', time: '', subject:'No Period',teacherOrBranch: '');
class Period{
  final int index;
  final String number;
  final String time;
  final String subject;
  final String place;
  final String teacherOrBranch;
  final String changedFrom;
  final String? changedTo;
  final bool currentPeriod;

  Period({required this.index,
    required this.number,
    required this.time,
    required this.subject,
    this.place='Classroom',
    this.teacherOrBranch='<Teacher Name>',
    this.changedFrom = '',
    this.currentPeriod = false,
    this.changedTo,
  });

  static Period fromPeriod(Period period,{
    int? index,
    String? number,
    String? time,
    String? subject,
    String? place,
    String? teacherOrBranch,
    String? changedFrom,
    bool? currentPeriod,
    String? changedTo,
})=>Period(
      index: index??period.index,
      number: number??period.number,
      time: time??period.time,
      subject: subject??period.subject,
      place: place??period.place,
      teacherOrBranch: teacherOrBranch??period.teacherOrBranch,
      changedFrom: changedFrom??period.changedFrom,
      currentPeriod: currentPeriod??period.currentPeriod,
      changedTo: changedTo??period.changedTo
  );
}

class Attendance{
  static const String present = 'Present';
  static const String absent = 'Absent';
  static const String leave = 'Leave';
  static const String notAssigned = 'Not Assigned';
}


Map<int,String> calenderMonth = {
  1:'Jan',
  2:'Feb',
  3:'Mar',
  4:'Apr',
  5:'May',
  6:'Jun',
  7:'Jul',
  8:'Aug',
  9:'Sept',
  10:'Oct',
  11:'Nov',
  12:'Dec',
};


int daysInMonth(DateTime date){
  var firstDayThisMonth = DateTime(date.year, date.month, date.day);
  var firstDayNextMonth = DateTime(firstDayThisMonth.year, firstDayThisMonth.month + 1, firstDayThisMonth.day);
  return firstDayNextMonth.difference(firstDayThisMonth).inDays;
}

int getNumOfPeriodChanged(List<Period> periodList) {
  int output = 0;
  for(Period period in periodList){
    if (period.changedFrom!='') output+=1;
  }
  return output;
}

int getCurrentPeriodIndex(List<Period> periodList){
  for(int index=0;index<periodList.length;index++){
    if (periodList[index].currentPeriod) return index;
  }
  return 0;
}

Period getPeriodFromNumber(String number,List<Period> periodList){
  for (Period period in periodList){
    if (period.number == number) return period;
  }
  return periodList[0];
}

String getDay(DateTime date){
  int weekDay = date.weekday%7;
  if (weekDay==0) weekDay=7;
  return Day.calenderDays[weekDay-1];
}

Map<String,List<String>> getAttMap(DateTime date,List<Period> periodList){
  Map<String,List<String>> output = {};

  bool pastDay = date.isBefore(today);
  bool futureDay = date.isAfter(today);

  int currentPeriodIndex = periodList.length-1;
  for (int index=0;index<periodList.length;index++){
    Period period = periodList[index];
    if (period.subject!='Break'){
      if (period.currentPeriod) currentPeriodIndex=index;

      String currentNum = period.number;
      String currentSub = period.subject;
      if (futureDay) {
        output[currentNum] = [currentSub,Attendance.notAssigned];
      }
      else if (pastDay) {
        output[currentNum] = [currentSub,([Attendance.present,Attendance.absent]..shuffle()).first];
      }
      else{
        if (index<currentPeriodIndex) {output[currentNum] = [currentSub,([Attendance.present,Attendance.absent]..shuffle()).first];}
        else {output[currentNum] = [currentSub,Attendance.notAssigned];}
      }

    }
  }
  return output;
}
// timeTable[getDay(date)]!


class DateBubble extends StatelessWidget {
  final dynamic date;
  final dynamic day;
  final dynamic month;
  final List<Color> colorList;
  final Color textColor;
  final GestureTapCallback? onTap;
  final double borderWidth;
  const DateBubble({
    Key? key, this.date, this.day, required this.colorList, required this.textColor, this.onTap, this.month, this.borderWidth=0
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0,vertical: 10),
      child: GestureDetector(
        onTap: onTap,
        child: Container(alignment: Alignment.center,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(colors: colorList,begin: Alignment.topLeft,end: Alignment.bottomRight),
          ),
          height: 150,
          width: 100,
          child: Column(
            children: [
              const SizedBox(height: 15,),
              MkText(textColor: textColor,text: '$month',size: 30,googleFont: SingulusFonts.josefinSlab,fontWeight: FontWeight.w600,),
              const SizedBox(height: 5,),
              MkText(textColor: textColor,text: '$date',size: 30,googleFont: SingulusFonts.josefinSlab),
              const SizedBox(height: 5,),
              MkText(textColor: textColor,text: '$day',size: 30,googleFont: SingulusFonts.josefinSlab,),
            ],
          ),
        ),
      ),
    );
  }
}

class TimeTableWidget extends StatelessWidget {
  final List<Period> todayPeriods;
  final DateTime date;
  final ScrollController? controller;
  final Color currentPeriodNumberColor;
  final Color currentPeriodColor1;
  final Color? fullTimeTableBtnColor;
  final Color currentPeriodColor2;
  final String textFont;
  final Color? changedFromColor;
  final Function(Period)? onTap;

  const TimeTableWidget({Key? key, required this.todayPeriods, required this.date, this.controller, required this.currentPeriodNumberColor, required this.currentPeriodColor1, required this.currentPeriodColor2, required this.textFont, this.fullTimeTableBtnColor, this.changedFromColor, this.onTap}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    const EdgeInsets rowPadding = EdgeInsets.symmetric(vertical: 15);

    return Stack(alignment: Alignment.center,
      children: [
        (todayPeriods.isEmpty)?const Center(child: BreakRow(text: 'No College',)):MkSingleChildScroll(
          controller: controller,
          overflowColor: currentPeriodNumberColor,
          child: Column(
            children: [
              const SizedBox(height: 8),
              for (Period period in todayPeriods)...[
                if (period.subject!='Break') GestureDetector(onTap:(onTap!=null&&(!date.isBefore(today)&&period.index>=getCurrentPeriodIndex(todayPeriods)))?()=>onTap!(period):(){},child: TimeTablePeriodRow(padding: rowPadding, period: period,date: date, currentPeriodNumberColor: currentPeriodNumberColor, currentPeriodColor1: currentPeriodColor1, currentPeriodColor2: currentPeriodColor2,textFont: textFont,changedFromColor: changedFromColor,))
                else const BreakRow(padding: rowPadding)
              ],
              const SizedBox(height: 45),
            ],
          ),
        ),
        Positioned(bottom: 5,child:MkTextButton(text: 'Full Timetable',bgColor: fullTimeTableBtnColor??currentPeriodColor1))
      ],
    );
  }
}

Color breakRowColor = Colors.black87;

class BreakRow extends StatelessWidget {
  final EdgeInsets? padding;
  final String font = SingulusFonts.oswald;
  final String text;

  const BreakRow({Key? key, this.padding, this.text='Break'}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding??EdgeInsets.zero,
      child: SizedBox(width: gcw(context),
        child: Row(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
          children: [Expanded(child: Container(height: 2,color: breakRowColor)),//,width: 150 black 54 qwerty
            const SizedBox(width: 10,),
            MkText(text: text,googleFont: font,size: 35,textColor: breakRowColor),
            const SizedBox(width: 10,),
            Expanded(child: Container(height: 2,color: breakRowColor)),
          ],
        ),
      ),
    );
  }
}

Color timeTablePeriodNumberColor = Colors.black;//dcdcdc

class TimeTablePeriodRow extends StatelessWidget {
  final EdgeInsets? padding;
  final Period period;
  final DateTime date;
  final Color currentPeriodNumberColor;
  final Color currentPeriodColor1;
  final Color? changedFromColor;
  final Color currentPeriodColor2;
  final String textFont;
  final bool displayNumber;
  final double? numberTilePadding;
  final List<Color>? bgGradientColors;
  final double? height;
  final double? width;
  final TextOverflow? subjectOverflow;

  const TimeTablePeriodRow({
    Key? key,  this.padding, required this.period, required this.date, required this.currentPeriodNumberColor, required this.currentPeriodColor1, required this.currentPeriodColor2, required this.textFont, this.changedFromColor, this.numberTilePadding, this.displayNumber=true, this.bgGradientColors, this.height, this.width, this.subjectOverflow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double numFontSize = 35;
    const String numFont = SingulusFonts.oswald;
    const double textFontSize = 24;
    const EdgeInsets textPadding = EdgeInsets.only(top: 4);
    final Color numTextColor = (period.currentPeriod&&date==today)?currentPeriodNumberColor:timeTablePeriodNumberColor;//qwerty black
    final Color textColor = (period.currentPeriod&&date==today)?const Color(0xFFffffff):const Color(0xFF000000);
    final List<Color> bgColors = (period.currentPeriod&&date==today)?[currentPeriodColor1,currentPeriodColor2]:bgGradientColors??[const Color(0xFFffffff),const Color(0xFFffffff)];
    final FontWeight fontWeight = (period.currentPeriod&&date==today)?FontWeight.bold:FontWeight.normal;

    return Padding(
      padding: padding?? EdgeInsets.zero,
      child: Row(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if(displayNumber) const SizedBox(width: 15),
          if(displayNumber) MkText(text: period.number,googleFont: numFont,size: numFontSize,textColor: numTextColor,),
          if(displayNumber) SizedBox(width: numberTilePadding??45),
          Stack(
            children: [
              Container(
                height: height??150,
                width: width??250,
                padding: const EdgeInsets.only(left: 25),
                decoration: BoxDecoration(gradient: LinearGradient(colors: bgColors),borderRadius: BorderRadius.circular(15)),
                child: Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MkText(text: period.time,size: textFontSize,googleFont: textFont,padding: textPadding,textColor: textColor,fontWeight: fontWeight,),
                    MkText(text: period.subject,size: textFontSize,googleFont: textFont,padding: textPadding,textColor: textColor,fontWeight: fontWeight,overflow: subjectOverflow,),
                    MkText(text: period.place,size: textFontSize,googleFont: textFont,padding: textPadding,textColor: textColor,fontWeight: fontWeight,),
                    MkText(text: period.teacherOrBranch,size: textFontSize,googleFont: textFont,padding: textPadding,textColor: textColor,fontWeight: fontWeight,),
                  ],
                ),
              ),
              if (period.changedFrom!='') Positioned(top: 5,right: 10,
                  child:MkChangeTheme(color: changedFromColor??currentPeriodColor1,
                      child: PopupMenuButton(
                          child: const MkWidgetWithCircleBg(child: MkText(textColor: Colors.white,text: '!',size: 18,)),
                          itemBuilder: (context) => [
                            PopupMenuItem(padding: const EdgeInsets.only(top: 10),
                              value: 1,
                              child: Container(width: double.maxFinite,alignment: Alignment.center,padding: const EdgeInsets.symmetric(horizontal: 15),
                                child: SingleChildScrollView(
                                  child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      MkText(text:period.changedFrom,googleFont: textFont,size: textFontSize,textColor:Colors.black,),
                                      MkText(text:'\u{2913}',googleFont: textFont,size: textFontSize,textColor:Colors.black,),
                                      MkText(text:period.changedTo??period.subject,googleFont: textFont,size: textFontSize,textColor:Colors.black,)
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ])))
            ],
          )
        ],
      ),
    );
  }
}


class AttendanceTile extends StatelessWidget {
  final String subjectNumber;
  final String subjectName;
  final String subjectFont;
  final String attendance;
  const AttendanceTile({
    Key? key, required this.subjectName, required this.attendance, required this.subjectNumber, required this.subjectFont
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String attendanceFont = SingulusFonts.sniglet;
    const double textFontSize = 24;
    const Color textColor = Color(0xFF000000);
    const Color absentColor = Color(0xFFEF8686);
    const Color presentColor = Color(0xFF48A697);
    const Color leaveColor = Color(0xFF7BA9C9);
    const Color notAssignedColor = Color(0xFF99999A);
    Color tileColor = (attendance==Attendance.present)? presentColor:(attendance==Attendance.absent)?absentColor:(attendance==Attendance.leave)?leaveColor:notAssignedColor;

    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
        width: grw(context, 0.9),
        decoration:BoxDecoration(
          border: Border.all(),
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(colors: [Colors.white,tileColor]),
        ),
        child: Row(mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(width:40,child: MkText(text: subjectNumber,googleFont: subjectFont,size: textFontSize,textColor: textColor,fontWeight: FontWeight.bold,)),
            const SizedBox(width: 50,),
            SizedBox(width:110,child: MkText(text: subjectName,googleFont: subjectFont,size: textFontSize,textColor: textColor,fontWeight: FontWeight.bold,)),
            const SizedBox(width: 35,),
            SizedBox(width:90,child: MkText(text: attendance,googleFont: attendanceFont,size: textFontSize,textColor: Colors.white,))
          ],
        ),
      ),
    )
    ;
  }
}

class AttendanceWidget extends StatelessWidget {
  final Map<String,List<String>> attendanceMap;
  final String subjectFont;
  final Color overFlowColor;//gradient1
  final Color fullAttendanceButtonColor;//selectedDateColor1

  const AttendanceWidget({Key? key, required this.attendanceMap, required this.subjectFont, required this.fullAttendanceButtonColor, required this.overFlowColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.center,
      children: [
        (attendanceMap.isEmpty)?const BreakRow(text: 'No College',):MkSingleChildScroll(
          overflowColor: overFlowColor,
          child: Column(
            children: [
              const SizedBox(height: 25),
              for (String subjectNumber in attendanceMap.keys)...[AttendanceTile(subjectNumber:subjectNumber ,subjectName: attendanceMap[subjectNumber]![0], attendance:attendanceMap[subjectNumber]![1],subjectFont: subjectFont,)],
              const SizedBox(height: 35),
            ],
          ),
        ),
        Positioned(bottom: 5,child:MkTextButton(text: 'Full Attendance',bgColor: fullAttendanceButtonColor,))
      ],
    );
  }
}


class EventsWidget extends StatefulWidget {
  final Color pinnedBgColor;//selectedDateColor2
  final Color todayBgColor;//gradient1
  final Color overFlowColor;//gradient2
  final Color everyEventBgColor;//selectedDateColor1
  final Color? textColor;
  final bool showNotice;
  const EventsWidget({Key? key, required this.pinnedBgColor, required this.todayBgColor, required this.overFlowColor, required this.everyEventBgColor, this.textColor, this.showNotice = false}) : super(key: key);

  @override
  State<EventsWidget> createState() => _EventsWidgetState();
}

class _EventsWidgetState extends State<EventsWidget> {
  late final ExpandableController _controller1;
  late final ExpandableController _controller2;
  late final ExpandableController _controller3;
  late final ExpandableController _controller4;
  late final ExpandableController _controller5;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller1 = ExpandableController();
    _controller2 = ExpandableController();
    _controller3 = ExpandableController();
    _controller4 = ExpandableController();
    _controller4.expanded;
    _controller5 = ExpandableController();
    _controller5.expanded;
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller1.dispose();
    _controller2.dispose();
    _controller3.dispose();
    _controller4.dispose();
    _controller5.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    const String pinnedFont = SingulusFonts.teko;
    const String upcomingFont = SingulusFonts.josefinSlab;

    return MkSingleChildScroll(overflowColor: widget.overFlowColor,
      child: Padding(
        padding: const EdgeInsets.only(right: 15.0,left: 15,top: 15),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ExpandablePanel(controller: _controller1,
              header: const MkText(text: 'Pinned',googleFont: pinnedFont,size: 45,),
              collapsed: Container(),
              expanded: Container(color: widget.pinnedBgColor.withOpacity(0.2),padding: const EdgeInsets.all(10),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const MkText(text: 'Past Events',googleFont: upcomingFont,padding: EdgeInsets.only(bottom: 10,top: 5),size: 30),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child:
                      ExpandableNotifier(controller: _controller2,
                        child: ScrollOnExpand(
                          child: ExpandablePanel(theme: const ExpandableThemeData(collapseIcon: Icons.push_pin,expandIcon:  Icons.push_pin,iconRotationAngle: 0),header: const MkText(text: 'Krishna Janmastami',googleFont: SingulusFonts.rancho),collapsed: Container(), expanded:
                          Column(
                            children: [
                              Container(color: widget.everyEventBgColor,
                                child: MkText(text: GlobalData.krisJamStr,textColor: widget.textColor??Colors.black,googleFont: SingulusFonts.ptSans,size: 15,padding: const EdgeInsets.symmetric(horizontal: 13,vertical: 10),),
                              ),const SizedBox(height: 15,)

                            ],
                          )),
                        ),
                      ),
                    ),
                    const SizedBox(height: 15,),
                    const MkText(text: 'Upcoming Events',googleFont: upcomingFont,padding: EdgeInsets.only(bottom: 10),size: 30),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child:
                      ExpandableNotifier(controller: _controller3,
                        child: ScrollOnExpand(
                          child: ExpandablePanel(theme: const ExpandableThemeData(collapseIcon: Icons.push_pin,expandIcon:  Icons.push_pin,iconRotationAngle: 0),header: const MkText(text: 'GeekFest 1.0',googleFont: SingulusFonts.rancho),collapsed: Container(),
                              expanded: Container(color: widget.everyEventBgColor,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 9.0),
                                      child: Container(
                                        height: grw(context,0.75),
                                        decoration: const BoxDecoration(image: DecorationImage(image: GlobalData.geekfest)),
                                      ),
                                    ),
                                    MkText(text: GlobalData.geekfestStr,textColor: widget.textColor??Colors.black,googleFont: SingulusFonts.ptSans,size: 15,padding: const EdgeInsets.symmetric(horizontal: 13,vertical: 10),)
                                  ],
                                ),
                              )),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 5,),
            Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const MkText(text: 'Today',googleFont: pinnedFont,size:45,),
                Container(color: widget.todayBgColor.withOpacity(0.2),padding: const EdgeInsets.all(10),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const MkText(text: 'Notice',googleFont: upcomingFont,padding: EdgeInsets.only(bottom: 10),size: 30),
                      if(!widget.showNotice) const BreakRow(text: 'No Notice Today',),
                      if(widget.showNotice) Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child:
                        ExpandableNotifier(controller: _controller4,
                          child: ScrollOnExpand(
                            child: ExpandablePanel(header: const MkText(text: 'Fees',googleFont: SingulusFonts.rancho),collapsed: Container(), expanded:
                            Column(
                              children: [
                                Container(color: widget.everyEventBgColor,
                                  child: MkText(text: GlobalData.feesStr,textColor: widget.textColor??Colors.black,googleFont: SingulusFonts.ptSans,size: 15,padding: const EdgeInsets.symmetric(horizontal: 13,vertical: 10),),
                                ),const SizedBox(height: 15,)

                              ],
                            )),
                          ),
                        ),
                      ),
                      if(widget.showNotice) const SizedBox(height: 15,),
                      if(widget.showNotice) const MkText(text: 'Clubs',googleFont: upcomingFont,padding: EdgeInsets.only(bottom: 10),size: 30),
                      if(widget.showNotice) Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child:
                        ExpandableNotifier(controller: _controller5,
                          child: ScrollOnExpand(
                            child: ExpandablePanel(header: const MkText(text: 'Music Club',googleFont: SingulusFonts.rancho),collapsed: Container(),
                                expanded: Container(color: widget.everyEventBgColor,
                                  child:  MkText(text: GlobalData.clubStr,textColor: widget.textColor??Colors.black,googleFont: SingulusFonts.ptSans,size: 15,padding: const EdgeInsets.symmetric(horizontal: 13,vertical: 10),),
                                )),
                          ),
                        ),
                      ),
                    ],),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class PinButton extends StatelessWidget {
  const PinButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.black87.withOpacity(0.3),
      ),
      child: const Icon(Icons.push_pin,size: 28,color: Colors.white,),
    );
  }
}