import 'package:flutter/material.dart';
import 'package:mk_flutter_helper/mk_flutter_helper.dart';
import 'package:mk_flutter_helper/relative_dimension.dart';

import '../../common_widgets.dart';
import '../../global_data.dart';
import '../../mk_theme_provider.dart';


Color gradient1 = const Color(0xff5974F3);
Color gradient2 = const Color(0xff738afa);
// Color tabTextColor = const Color(0xffffffff);
Color tabTextColor = const Color(0xff252c4f);
Color selectedDateColor1 = const Color(0xff7b8bd7);
Color selectedDateColor2 = const Color(0xffa3aee3);
Color notSelectedDateColor1 =  const Color(0xff67b0de);
Color notSelectedDateColor1Lighter =  const Color(0xff8dc8ee);
Color notSelectedDateColor2 = const Color(0xff738afa);
Color headingTextColor = const Color(0xffffffff);
Color calenderColor = const Color(0xffa3aee3);

Color tableTextColor =  Colors.black87;

const String annieUseYourTelescope = SingulusFonts.annieUseYourTelescope;
const String alegreyaSans = SingulusFonts.algreya;
const String josefinSlab = SingulusFonts.josefinSlab;
const String blinker = SingulusFonts.blinker;

MkText possibleSubjectMkText(String subject)=>MkText(text: subject,size:24,googleFont: SingulusFonts.sniglet,padding: const EdgeInsets.only(left: 10),overflow: TextOverflow.ellipsis,);
Map<String,Widget> possibleSubjects = {
  'Discrete Structure': possibleSubjectMkText('Discrete Structure'),
  'Intro to Prob & Stats': possibleSubjectMkText('Intro to Prob & Stats'),
  'Mathematics-1': possibleSubjectMkText('Mathematics-1'),
  'Mathematics-2': possibleSubjectMkText('Mathematics-2'),
  'No Period': possibleSubjectMkText('No Period'),
};
MkText possibleClassMkText(String subject)=>MkText(text: subject,size:24,googleFont: SingulusFonts.sniglet,padding: const EdgeInsets.only(left: 10));
Map<String,Widget> possibleClasses = {
  'AIML1': possibleClassMkText('AIML1'),
  'AIML2': possibleClassMkText('AIML2'),
  'CS1': possibleClassMkText('CS1'),
  'CS2': possibleClassMkText('CS2'),
  'CS4': possibleClassMkText('CS4'),
};

// Map<String,List<Period>> teacherTimeTable = {
//   Day.mon : [
//     Period(number: '1st', time: '10:15 - 11:00', subject: 'Python Lab',place: 'CL3',teacherOrBranch:'AIML1',changedFrom: '',currentPeriod: false),
//     Period(number: '2nd', time: '11:00 - 11:45', subject: '',place: '',teacherOrBranch:'',changedFrom: '',currentPeriod: false),
//     Period(number: '3rd', time: '11:45 - 12:30', subject: '',place: '',teacherOrBranch:'',changedFrom: '',currentPeriod: false),
//     Period(number: 'Break', time: '12:30 - 13:00', subject: 'Break', place: '', teacherOrBranch: ''),
//     Period(number: '4th', time: '13:00 - 13:45', subject: '',place: '',teacherOrBranch:'',changedFrom: '',currentPeriod: false),
//     Period(number: '5th', time: '13:45 - 14:30', subject: '',place: '',teacherOrBranch:'',changedFrom: '',currentPeriod: false),
//     Period(number: '6th', time: '14:30 - 15:15', subject: '',place: '',teacherOrBranch:'',changedFrom: '',currentPeriod: false),
//     Period(number: '7th', time: '15:15 - 16:00', subject: '',place: '',teacherOrBranch:'',changedFrom: '',currentPeriod: false),
//   ],
//   Day.tue : [],
//   Day.wed : [],
//   Day.thur : [],
//   Day.fri : [],
//   Day.sat : [],
//   Day.sun : [],
// };
Map<String,List<Period>> teacherTimeTable = {
  Day.mon : [
    Period(index:0,number: '1st', time: '10:15 - 11:00', subject: 'Intro to Prob & Stats',place: 'NS2',teacherOrBranch:'AIML1',changedFrom: '',currentPeriod: false),
    Period(index:1,number: '2nd', time: '11:00 - 11:45', subject: 'Discrete Structure',place: 'Room no: 216',teacherOrBranch:'CS1',changedFrom: '',currentPeriod: false),
    Period(index:2,number: '3rd', time: '11:45 - 12:30', subject: 'No Period',place: '',teacherOrBranch:'',changedFrom: '',currentPeriod: false),
    Period(index:3,number: 'Break', time: '12:30 - 13:00', subject: 'Break', place: '', teacherOrBranch: ''),
    Period(index:4,number: '4th', time: '13:00 - 13:45', subject: 'Intro to Prob & Stats',place: 'NS3',teacherOrBranch:'AIML2',changedFrom: '',currentPeriod: false),
    Period(index:5,number: '5th', time: '13:45 - 14:30', subject: 'Mathematics-1',place: 'Room no: 110',teacherOrBranch:'CS2',changedFrom: '',currentPeriod: false),
    Period(index:6,number: '6th', time: '14:30 - 15:15', subject: 'No Period',place: '',teacherOrBranch:'',changedFrom: '',currentPeriod: false),
    Period(index:7,number: '7th', time: '15:15 - 16:00', subject: 'Mathematics-2',place: 'Room no: 114',teacherOrBranch:'CS4',changedFrom: '',currentPeriod: false),
  ],


  Day.tue : [
    Period(index:0,number: '1st', time: '10:15 - 11:00', subject: 'No Period',place: '',teacherOrBranch:'',changedFrom: '',currentPeriod: false),
    Period(index:1,number: '2nd', time: '11:00 - 11:45', subject: 'Intro to Prob & Stats',place: 'NS2',teacherOrBranch:'AIML1',changedFrom: '',currentPeriod: false),
    Period(index:2,number: '3rd', time: '11:45 - 12:30', subject: 'Intro to Prob & Stats',place: 'NS3',teacherOrBranch:'AIML2',changedFrom: '',currentPeriod: false),
    Period(index:3,number: 'Break', time: '12:30 - 13:00', subject: 'Break', place: '', teacherOrBranch: ''),
    Period(index:4,number: '4th', time: '13:00 - 13:45', subject: 'Mathematics-2',place: 'Room no: 114',teacherOrBranch:'CS4',changedFrom: '',currentPeriod: false),
    Period(index:5,number: '5th', time: '13:45 - 14:30', subject: 'Mathematics-2',place: 'Room no: 114',teacherOrBranch:'CS4',changedFrom: 'BME',currentPeriod: true),
    Period(index:6,number: '6th', time: '14:30 - 15:15', subject: 'Mathematics-1',place: 'Room no: 110',teacherOrBranch:'CS2',changedFrom: '',currentPeriod: false),
    Period(index:7,number: '7th', time: '15:15 - 16:00', subject: 'Discrete Structure',place: 'Room no: 216',teacherOrBranch:'CS1',changedFrom: '',currentPeriod: false),
  ],


  Day.wed : [
    Period(index:0,number: '1st', time: '10:15 - 11:00', subject: 'Discrete Structure',place: 'Room no: 216',teacherOrBranch:'CS1',changedFrom: '',currentPeriod: false),
    Period(index:1,number: '2nd', time: '11:00 - 11:45', subject: 'Mathematics-1',place: 'Room no: 110',teacherOrBranch:'CS2',changedFrom: '',currentPeriod: false),
    Period(index:2,number: '3rd', time: '11:45 - 12:30', subject: 'Mathematics-2',place: 'Room no: 114',teacherOrBranch:'CS4',changedFrom: '',currentPeriod: false),
    Period(index:3,number: 'Break', time: '12:30 - 13:00', subject: 'Break', place: '', teacherOrBranch: ''),
    Period(index:4,number: '4th', time: '13:00 - 13:45', subject: 'No Period',place: '',teacherOrBranch:'',changedFrom: '',currentPeriod: false),
    Period(index:5,number: '5th', time: '13:45 - 14:30', subject: 'No Period',place: '',teacherOrBranch:'',changedFrom: '',currentPeriod: false),
    Period(index:6,number: '6th', time: '14:30 - 15:15', subject: 'Intro to Prob & Stats',place: 'NS3',teacherOrBranch:'AIML2',changedFrom: '',currentPeriod: false),
    Period(index:7,number: '7th', time: '15:15 - 16:00', subject: 'Intro to Prob & Stats',place: 'NS2',teacherOrBranch:'AIML1',changedFrom: '',currentPeriod: false),
  ],


  Day.thur : [
    Period(index:0,number: '1st', time: '10:15 - 11:00', subject: 'Intro to Prob & Stats',place: 'NS2',teacherOrBranch:'AIML1',changedFrom: '',currentPeriod: false),
    Period(index:1,number: '2nd', time: '11:00 - 11:45', subject: 'Discrete Structure',place: 'Room no: 216',teacherOrBranch:'CS1',changedFrom: '',currentPeriod: false),
    Period(index:2,number: '3rd', time: '11:45 - 12:30', subject: 'Discrete Structure',place: 'Room no: 216',teacherOrBranch:'CS1',changedFrom: 'Tech. Comm.',currentPeriod: false),
    Period(index:3,number: 'Break', time: '12:30 - 13:00', subject: 'Break', place: '', teacherOrBranch: ''),
    Period(index:4,number: '4th', time: '13:00 - 13:45', subject: 'Intro to Prob & Stats',place: 'NS3',teacherOrBranch:'AIML2',changedFrom: '',currentPeriod: false),
    Period(index:5,number: '5th', time: '13:45 - 14:30', subject: 'Mathematics-1',place: 'Room no: 110',teacherOrBranch:'CS2',changedFrom: '',currentPeriod: false),
    Period(index:6,number: '6th', time: '14:30 - 15:15', subject: 'No Period',place: '',teacherOrBranch:'',changedFrom: '',currentPeriod: false),
    Period(index:7,number: '7th', time: '15:15 - 16:00', subject: 'Mathematics-2',place: 'Room no: 114',teacherOrBranch:'CS4',changedFrom: '',currentPeriod: false),
        ],
    Day.fri : [
    Period(index:0,number: '1st', time: '10:15 - 11:00', subject: 'Discrete Structure',place: 'Room no: 216',teacherOrBranch:'CS1',changedFrom: '',currentPeriod: false),
    Period(index:1,number: '2nd', time: '11:00 - 11:45', subject: 'Mathematics-1',place: 'Room no: 110',teacherOrBranch:'CS2',changedFrom: '',currentPeriod: false),
    Period(index:2,number: '3rd', time: '11:45 - 12:30', subject: 'Mathematics-2',place: 'Room no: 114',teacherOrBranch:'CS4',changedFrom: '',currentPeriod: true),
    Period(index:3,number: 'Break', time: '12:30 - 13:00', subject: 'Break', place: '', teacherOrBranch: ''),
    Period(index:4,number: '4th', time: '13:00 - 13:45', subject: 'No Period',place: '',teacherOrBranch:'',changedFrom: '',currentPeriod: false),
    Period(index:5,number: '5th', time: '13:45 - 14:30', subject: 'No Period',place: '',teacherOrBranch:'',changedFrom: '',currentPeriod: false),
    Period(index:6,number: '6th', time: '14:30 - 15:15', subject: 'Intro to Prob & Stats',place: 'NS3',teacherOrBranch:'AIML2',changedFrom: '',currentPeriod: false),
    Period(index:7,number: '7th', time: '15:15 - 16:00', subject: 'Intro to Prob & Stats',place: 'NS2',teacherOrBranch:'AIML1',changedFrom: '',currentPeriod: false),
  ],

  Day.sat : [],
  Day.sun : [],
};

class TeacherHomePage extends StatefulWidget {
  const TeacherHomePage({Key? key}) : super(key: key);

  @override
  State<TeacherHomePage> createState() => _TeacherHomePageState();
}

class _TeacherHomePageState extends State<TeacherHomePage> with TickerProviderStateMixin {
  DateTime _selectedDate = DateTime(2022,8,26);
  late int _currentMonthKey = _selectedDate.month;
  late String _currentDay= getDay(_selectedDate);
  late List<int> _calenderDates = List<int>.generate(daysInMonth(_selectedDate), (i) => i + 1);
  late List<Period> _todayPeriods = teacherTimeTable[_currentDay]!;
  late int _numOfPeriodsChanged = getNumOfPeriodChanged(_todayPeriods);

  late final ScrollController _dateScrollController;
  late final TabController _tabController;
  late final ScrollController _periodController;

  final double _dateBubbleWidth = 100.0 + 5.8;


  @override
  void initState() {
    super.initState();
    _dateScrollController = ScrollController(initialScrollOffset: _dateBubbleWidth * _selectedDate.day);
    _tabController = TabController(length: 3, vsync: this,initialIndex: 0);
    _periodController = ScrollController(initialScrollOffset: getCurrentPeriodIndex(_todayPeriods) * 145);
  }

  @override
  void dispose() {
    _dateScrollController.dispose();
    _tabController.dispose();
    super.dispose();
  }

  void _travelToSelectedDate(DateTime date){
    _dateScrollController.animateTo(
      (date.day-1) * _dateBubbleWidth,
      duration: const Duration(seconds: 1),
      curve: Curves.fastOutSlowIn,
    );
  }

  void _travelToCurrentPeriod(){
    _periodController.animateTo(
      getCurrentPeriodIndex(_todayPeriods) * 145,
      duration: const Duration(seconds: 1),
      curve: Curves.fastOutSlowIn,
    );
  }

  void _onDateTapped(int newDateIndex){
    setState(() {
      _selectedDate=DateTime(2022,_currentMonthKey,_calenderDates[newDateIndex]);
      _currentDay = getDay(_selectedDate);
      _todayPeriods = teacherTimeTable[_currentDay]!;
      _numOfPeriodsChanged = getNumOfPeriodChanged(_todayPeriods);
      _travelToSelectedDate(_selectedDate);
      // if(_tabController.index==1)_tabController.animateTo(0);
    });
  }

  Future<void> _pickFromCalender(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: _selectedDate,
        firstDate: DateTime(2022, 4),
        lastDate: DateTime(2022,12,31),
        builder: (context,child){
          return MkChangeTheme(
            color: calenderColor,
            child: child??Container(),
          );
        }
    );
    if (picked != null && picked != _selectedDate) {
      _setCurrentDate(picked);
    }
  }

  void _setCurrentDate(DateTime date){
    setState(() {
      _selectedDate = date;
      _currentMonthKey = _selectedDate.month;
      _currentDay = getDay(_selectedDate);
      _calenderDates = List<int>.generate(daysInMonth(_selectedDate), (i) => i + 1);
      _todayPeriods = teacherTimeTable[_currentDay]!;
      _numOfPeriodsChanged = getNumOfPeriodChanged(_todayPeriods);
      _travelToSelectedDate(_selectedDate);
      _travelToCurrentPeriod();
      // if(_tabController.index==1)_tabController.animateTo(0);
    });
  }

  void _setPeriod(Period newPeriod)=>setState(() {
    _todayPeriods[newPeriod.index] = newPeriod;
  });

  List<String> _getChangedFromTo(Period oldPeriod,String nSubject,String nBranch,String nPlace){
    String toStr = '';
    String fromStr = '';
    if (nSubject!=oldPeriod.subject) {
      toStr+='$nSubject \n';
      fromStr+='${oldPeriod.subject}\n';
    }
    if (nBranch!=oldPeriod.teacherOrBranch) {
      toStr+=' $nBranch\n';
      fromStr+='${oldPeriod.teacherOrBranch}\n';
    }
    if (nPlace!=oldPeriod.place) {
      toStr+=nPlace;
      fromStr+=oldPeriod.place;
    }
    // if(fromStr.endsWith('|')) fromStr=fromStr.substring(0,fromStr.length);
    // if(toStr.endsWith('|')) toStr=toStr.substring(0,toStr.length);
    fromStr.trimLeft();toStr.trim();
    return [fromStr,toStr];
  }

  void _onPeriodTap(BuildContext context,Period period)=> showDialog(context: context,
        builder: (con){
      String newSubject = period.subject;
      String newBranch = period.teacherOrBranch;
      String newPlace = period.place;
      return Dialog(
          child: MkUnFocus(
            child: Container(
              height: grh(context, 0.6),
              width: grw(context,0.95),
              padding: const EdgeInsets.all(15),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    MkText(text: 'Change ${period.number} period',googleFont: SingulusFonts.oswald,size: 30,textColor: (period.currentPeriod&&_selectedDate==today)?gradient1:timeTablePeriodNumberColor,),
                    const SizedBox(height: 15,),
                    TimeTablePeriodRow(
                      displayNumber: false,
                        subjectOverflow: TextOverflow.ellipsis,
                        period: period,
                        width: grw(context, 0.65),
                        date: _selectedDate,
                        currentPeriodNumberColor: gradient1,
                        currentPeriodColor1: selectedDateColor1,
                        currentPeriodColor2: selectedDateColor2,
                        changedFromColor: notSelectedDateColor1Lighter,
                        bgGradientColors: [notSelectedDateColor1Lighter,notSelectedDateColor1Lighter.withOpacity(0.8)],
                        textFont: josefinSlab
                    ),
                    const SizedBox(height: 10,),
                    const Icon(Icons.arrow_downward_sharp,size: 50,),
                    Row(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            MkComboBox(onTapFunc: (newSub)=>newSubject=newSub,dropDownMaxHeight: 350,
                                comboBoxWidth: grw(context,0.65),comboBoxHeight: 48,iconSize: 24,icon: const Icon(Icons.arrow_drop_down),initialVal: newSubject,
                                dropDownItems: possibleSubjects),
                            const SizedBox(height: 15,),
                            MkComboBox(onTapFunc: (newBran)=>newBranch=newBran,dropDownMaxHeight: 350,
                                comboBoxWidth: grw(context,0.65),comboBoxHeight: 48,iconSize: 24,icon: const Icon(Icons.arrow_drop_down),initialVal: (period.teacherOrBranch!='')?period.teacherOrBranch:possibleClasses.keys.first,
                                dropDownItems: possibleClasses),
                            const SizedBox(height: 15,),
                            MkTextFormField(onTextChange: (newPl)=>newPlace=newPl,width:grw(context,0.65),initialValue: period.place,hintText: 'Place',textStyle: MkText.style(googleFont: josefinSlab,size: 24,fontWeight: FontWeight.bold),cursorColor: gradient2,textInputAction: TextInputAction.done,),
                            const SizedBox(height: 5,),
                            Row(mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                IconButton(
                                    onPressed: (){
                                      _setPeriod(Period.fromPeriod(
                                          period,
                                          subject: newSubject,
                                          teacherOrBranch: (newSubject=='No Period')?'':newBranch,
                                          place: (newSubject=='No Period')?'':newPlace,
                                        changedFrom: _getChangedFromTo(period, newSubject, newBranch, newPlace)[0],
                                        changedTo: _getChangedFromTo(period, newSubject, newBranch, newPlace)[1],
                                      ));
                                      Navigator.of(context).pop();
                                      }, icon: const Icon(Icons.check,color: Colors.green,)),
                                IconButton(onPressed: ()=> Navigator.of(context).pop(), icon: const Icon(Icons.cancel_outlined,color: Colors.red,)),
                              ],
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        );}
    );

  @override
  Widget build(BuildContext context) {
    Color theme = Watchers.gcfct(context, MkColor.theme);

    return SafeArea(
        child: Scaffold(
          backgroundColor:theme,
          // width: gcw(context),
          // height: gch(context),
          // decoration: const BoxDecoration(image: DecorationImage(image: GlobalData.blurredBg3,fit: BoxFit.cover)),
          body: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                MkAnimated(
                  beginOffset: const Offset(0,-2),
                  endOffset: const Offset(0,0),
                  child: SingulusAppBar(
                    headingPadding: const EdgeInsets.only(left: 25,right: 25),
                    headingChild: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    MkText(text: 'Welcome,',textColor: theme,googleFont:blinker,size: 35,),
                                    Stack(children: [
                                      const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: CircleAvatar(child: Icon(Icons.person))
                                      ),
                                      Positioned(top:0,right:0,child: MkWidgetWithCircleBg(child: MkText(textColor: theme,text: '1',size: 15,),))
                                    ])
                                  ]),
                              Row(mainAxisAlignment: MainAxisAlignment.start,
                                  children: [MkText(text: 'Manish',textColor: theme,googleFont:blinker,size: 30,)]),
                            ],
                          ),
                          const SizedBox(height: 12,),
                          Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              MkText(text: 'Teacher of <College>',textColor: theme,googleFont:josefinSlab,size: 28),
                            ],
                          ),
                        ]),
                  ),
                ),
                const SizedBox(height: 12,),
                Row(
                  children: [
                    SizedBox(
                      height: 138,
                      width: 330,
                      child: ListView.builder(scrollDirection: Axis.horizontal,
                          controller: _dateScrollController,
                          itemCount: _calenderDates.length,
                          itemBuilder: (con,index){
                            bool isSelected = index ==_selectedDate.day-1;
                            return DateBubble(
                                onTap: ()=>_onDateTapped(index),
                                date: _calenderDates[index],
                                month: calenderMonth[_currentMonthKey],
                                day: getDay(DateTime(2022,_currentMonthKey,_calenderDates[index])),
                                borderWidth:(isSelected)?2:0,colorList: (isSelected)?[selectedDateColor1,selectedDateColor2]:[notSelectedDateColor1,notSelectedDateColor2],
                                textColor: (isSelected)?Colors.white:Colors.black87);
                          }),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 17),
                      child: Column(
                        children: [
                          GestureDetector(onTap: ()=>_setCurrentDate(today),child: Icon(Icons.refresh,size: 35,color: notSelectedDateColor1,)),
                          const SizedBox(height: 15,),
                          GestureDetector(onTap: ()=>_pickFromCalender(context),child: Icon(Icons.calendar_today_sharp,size: 35,color: notSelectedDateColor1,)),
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 4,),
                Row(
                  children: [
                    TabBar(
                      controller: _tabController,
                      labelStyle: MkText.style(googleFont: josefinSlab,size: 27,fontWeight: FontWeight.w500),
                      labelPadding: const EdgeInsets.only(left: 15,right:15),
                      labelColor: tabTextColor,
                      unselectedLabelColor: Colors.grey,
                      indicatorColor: selectedDateColor2,
                      isScrollable: true,
                      indicatorSize: TabBarIndicatorSize.label,
                      tabs: [
                        Stack(children: [const Padding(padding: EdgeInsets.only(top: 5.0,right: 5), child: Tab(text: "Timetable"),),if(_numOfPeriodsChanged>0) Positioned(right: 0,child: MkWidgetWithCircleBg(text: '$_numOfPeriodsChanged',))]),
                        const Padding(
                          padding: EdgeInsets.only(top: 5.0),
                          child: Tab(text: "Attendance"),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 5.0),
                          child: Tab(text: "Events"),
                        )
                      ],
                    ),
                  ],
                ),
                Expanded(
                  child: TabBarView(
                    physics: const NeverScrollableScrollPhysics(),
                    controller: _tabController,
                    children: [
                      TimeTableWidget(
                        textFont: josefinSlab,todayPeriods: _todayPeriods,
                        date: _selectedDate,controller: _periodController,
                        currentPeriodNumberColor: gradient1,
                        currentPeriodColor1: selectedDateColor1,
                        currentPeriodColor2: selectedDateColor2,
                        changedFromColor: notSelectedDateColor1Lighter,
                        fullTimeTableBtnColor: gradient2.withOpacity(0.9),
                        onTap: (per)=>_onPeriodTap(context,per),
                      ),
                      TeacherAttendanceWidget(
                        subjectFont: josefinSlab,
                        fullAttendanceButtonColor: gradient2.withOpacity(0.95),
                        overFlowColor: gradient1,
                        todayPeriods: _todayPeriods, date: _selectedDate,
                      ),
                      Stack(alignment: Alignment.topCenter,
                        children: [
                          EventsWidget(
                              showNotice: _selectedDate==today,
                              pinnedBgColor: selectedDateColor2,
                              todayBgColor: notSelectedDateColor1,
                              overFlowColor: gradient2,
                              everyEventBgColor: selectedDateColor1,
                            textColor: Colors.white,
                          ),
                          Positioned(bottom: 0,child: MkTextButton(text: 'Add Event',bgColor: gradient2.withOpacity(0.8),))
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

Map<String,Color> attendanceColorT = {
  Attendance.present: const Color(0xFF43C7B4),
  Attendance.absent: const Color(0xFF832B2B),
  Attendance.leave: const Color(0xFF5098CB),
  Attendance.notAssigned: const Color(0xFF4F4A4A),
};
Map<String,List<String>> attendanceMap = {
  'AIML1':List<String>.generate(5, (index) => Attendance.notAssigned),
  'AIML2':List<String>.generate(6, (index) => Attendance.notAssigned),
  'CS1':List<String>.generate(7, (index) => Attendance.notAssigned),
  'CS2':List<String>.generate(8, (index) => Attendance.notAssigned),
  'CS4':List<String>.generate(9, (index) => Attendance.notAssigned),
};
// Map<String,List<String>> studentMap = {
//   'AIML1':List<String>.generate(5, (index) =>'Student  ${index+1}'),
//   'AIML2':List<String>.generate(6, (index) => 'Student  ${index+1}'),
//   'CS1':List<String>.generate(7, (index) => 'Student  ${index+1}'),
//   'CS2':List<String>.generate(8, (index) => 'Student  ${index+1}'),
//   'CS4':List<String>.generate(9, (index) => 'Student  ${index+1}'),
// };
Map<String,List<String>>studentMap = {
'AIML1':['Aman','Ankita', 'Ayushman', 'Dhulub', 'Harish', 'Kushi', 'Mukund', 'Naman', 'Nandan', 'Palak'],
'AIML2':['Riya', 'Rishabh', 'Sanket', 'Shivani', 'Tara', 'Tushar', 'Urvi', 'Vashisht', 'Waqar', 'Zara'],
'CS1':['Aashi', 'Aashtha', 'Anmol', 'Ankur', 'Bala', 'Bandini', 'Danish', 'Harsh'],
'CS2':['Ishita', 'Ishan', 'Jehan', 'Jaani', 'Komal', 'Kaurav', 'Laxman'],
'CS4':['Manoj', 'Nayab', 'Numaish', 'Pankhudi', 'Nandita', 'Zeenat'],
};

class TeacherAttendanceWidget extends StatefulWidget {
  final String subjectFont;
  final Color overFlowColor;//gradient1
  final Color fullAttendanceButtonColor;//selectedDateColor1
  final List<Period> todayPeriods;//selectedDateColor1
  final DateTime date;//selectedDateColor1

  const   TeacherAttendanceWidget({Key? key, required this.subjectFont, required this.overFlowColor, required this.fullAttendanceButtonColor, required this.todayPeriods, required this.date}) : super(key: key);

  @override
  State<TeacherAttendanceWidget> createState() => _TeacherAttendanceWidgetState();
}

class _TeacherAttendanceWidgetState extends State<TeacherAttendanceWidget> {
  late Period currentPeriod = widget.todayPeriods[getCurrentPeriodIndex(widget.todayPeriods)];
  // late Period currentPeriod = (widget.todayPeriods.isNotEmpty)?noPeriod:widget.todayPeriods[getCurrentPeriodIndex(widget.todayPeriods)];
  late Period _selectedPeriod = currentPeriod;
  late bool futureDate = widget.date.isAfter(today);
  late bool presentDate = widget.date == today;
  late bool pastDate = widget.date.isBefore(today);

  late List<String> _studentList = studentMap[_selectedPeriod.teacherOrBranch]??[];
  late List<String> _attendanceList = List.generate(_studentList.length, (index) => ([Attendance.present,Attendance.absent]..shuffle()).first);

  final String tableHeadingFont = SingulusFonts.algreya;
  final String tableContentFont = SingulusFonts.rancho;
  final String attendanceFont = SingulusFonts.rancho;

  MkText colHeadingMkText(String text)=>MkText(text: text,googleFont: tableHeadingFont,size: 26,alignment: TextAlign.center,textColor: tableTextColor,);

  MkText rollNameMkText(String text)=>MkText(text: text,googleFont: tableContentFont,size: 29,alignment: TextAlign.center,padding: const EdgeInsets.symmetric(vertical:10),textColor: tableTextColor);

  Widget attendanceTextWidget(int index,[bool future=false]) {
    String text = _attendanceList[index];
    if (future){
    return Row(mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MkText(text: Attendance.notAssigned,
          googleFont: attendanceFont,
          size: 30,
          textColor: attendanceColorT[Attendance.notAssigned]!,
          alignment: TextAlign.center,
          padding: const EdgeInsets.symmetric(vertical: 10),),
      ],
    );}
    else {
      return Row(mainAxisAlignment: MainAxisAlignment.end,
        children: [
          MkText(text: text,
            googleFont: attendanceFont,
            size: 30,
            textColor: attendanceColorT[text]!,
            alignment: TextAlign.center,
            padding: const EdgeInsets.symmetric(vertical: 10),
          ),
          const SizedBox(width: 15,),
          GestureDetector(onTap:(){setState(() {_attendanceList[index] = Attendance.notAssigned;});},child: Container(color:Colors.transparent,width:75,height: 38,child: const Icon(Icons.edit, color: Colors.black54, size: 20,)))
        ],
      );
    }
  }

  void _setRandomAttendance()=>setState(() {
    _attendanceList = List.generate(_studentList.length, (index) => ([Attendance.present,Attendance.absent]..shuffle()).first);
  });
  void _setNotAssignedAttendance()=>setState(() {
    _attendanceList = List.generate(_studentList.length, (index) => Attendance.notAssigned);
  });
  void resetAttendance()=>setState(() {
    _attendanceList = List<String>.generate(_studentList.length, (index) => Attendance.notAssigned);
  });

  void _setAttendance(int index,String attendance)=>setState(() {
    setState(() {_attendanceList[index] = attendance;});
  });


  String _getPresentRolls(){
    String output = '';
    for(int index=0;index<_studentList.length;index++){
      if (_attendanceList[index]==Attendance.present) {
        output += '${index + 1},';
      }
    }
    return output.substring(0,output.length);
  }

  void _setAttendanceFromText(String attendanceStr){
    _attendanceList = List<String>.generate(_studentList.length, (index) => Attendance.absent);
    List<String> indices = attendanceStr.split(',');
    for (String index in indices){
      try{
        _setAttendance(int.parse(index)-1, Attendance.present);
      } catch(_){}
    }
  }

  Widget attendanceBtnWidget(int index) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        GestureDetector(onTap: (){_setAttendance(index, Attendance.absent);},
            child: Container(color:Colors.redAccent.withOpacity(0.3),width: 90,child: MkText(alignment:TextAlign.center,text: 'A', googleFont: attendanceFont, size: 30, padding: const EdgeInsets.symmetric(vertical: 10),textColor: tableTextColor))),
        GestureDetector(onTap: (){_setAttendance(index, Attendance.present);},
            child:Container(color:Colors.greenAccent.withOpacity(0.3),width:90,child: MkText(alignment:TextAlign.center,text: 'P', googleFont: attendanceFont, size: 30, padding: const EdgeInsets.symmetric(vertical: 10),textColor: tableTextColor))),
      ],
    );
  }

  void onPeriodChange(String newPeriod){
    setState(() {
      _selectedPeriod = getPeriodFromNumber(newPeriod,widget.todayPeriods);
      _studentList = studentMap[_selectedPeriod.teacherOrBranch]??[];
      _setRandomAttendance();
    });
  }

  void takeTextAttendance(BuildContext context)=>showDialog(
      context: context,
      builder: (con){  String tempAttStr = _getPresentRolls();

      return Dialog(
        child: Container(height: grh(context, 0.4),padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const MkText(text: 'Roll numbers of students that are present:',googleFont:blinker,),
                const SizedBox(height: 10,),
                Container(color: gradient1.withOpacity(0.1),
                  child: MkTextFormField(height: grh(context,0.23),
                    width: grw(context, 0.75),textAlignment: TextAlign.start,
                    onTextChange: (newStr)=>tempAttStr=newStr,initialValue: _getPresentRolls(),
                    minLines: 13,maxLines: 15,
                    cursorColor: gradient1,
                    textStyle: MkText.style(size: 28,googleFont: SingulusFonts.sniglet),
                  ),
                ),
                const SizedBox(height: 5,),
                Row(mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(onPressed: (){_setAttendanceFromText(tempAttStr);Navigator.of(context).pop();}, icon: const Icon(Icons.check,color: Colors.green,)),
                    IconButton(onPressed: ()=> Navigator.of(context).pop(), icon: const Icon(Icons.cancel_outlined,color: Colors.red,)),
                  ],
                )
              ],
            ),
          ),
        ),
      );}
  );

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (pastDate || (presentDate && _selectedPeriod.index<currentPeriod.index)) _setRandomAttendance();
    if (presentDate &&(_selectedPeriod.index==currentPeriod.index)) _setNotAssignedAttendance();
  }
  @override
  Widget build(BuildContext context) {
    return (widget.todayPeriods.isEmpty)?const BreakRow(text: 'No College',):
    Stack(alignment: Alignment.topCenter,
      children: [
        SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 15,),
              Row(crossAxisAlignment: CrossAxisAlignment.end,mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MkComboBox(onTapFunc: onPeriodChange,dropDownMaxHeight: 350,
                      comboBoxWidth: 75,comboBoxHeight: 48,iconSize: 24,icon: const Icon(Icons.arrow_drop_down),initialVal: _selectedPeriod.number,
                      dropDownItems: {
                    for (Period period in widget.todayPeriods)...{
                      if(period.number!='Break') period.number:MkText(text: period.number,size:24,googleFont: SingulusFonts.sniglet,padding: const EdgeInsets.only(left: 10),textColor: (period.currentPeriod)?gradient2:null,),
                    }
                  }),
                  const SizedBox(width: 20,),
                  SizedBox(width:grw(context, 0.47),child: MkText(text: '${_selectedPeriod.teacherOrBranch}  ${_selectedPeriod.subject}',googleFont: SingulusFonts.oswald,size: 28,overflow: TextOverflow.ellipsis,)),
                  const SizedBox(width: 17,),
                  GestureDetector(onTap: ()=>takeTextAttendance(context),child: const Icon(Icons.edit_note_outlined,size: 30,),),
                  const SizedBox(width: 12,),
                  GestureDetector(onTap: ()=>mkShowDeleteAlertDialog(context: context,onTrueFunc:resetAttendance,headingFont: SingulusFonts.blinker,contentFont: SingulusFonts.algreya,title: 'Reset Attendance',content: 'Are you sure you want to reset the attendance?' ),child: const Icon(Icons.refresh,size: 26,)),
                ],
              ),
              const SizedBox(height: 25,),
              (_selectedPeriod.subject=='No Period')?const BreakRow(text: 'No Period',padding: EdgeInsets.symmetric(vertical: 100),):Container(
                padding: const EdgeInsets.all(8),
                color: Colors.white.withOpacity(0.5),
                child: Table(
                  columnWidths: const {0:FlexColumnWidth(1),1:FlexColumnWidth(2),2:FlexColumnWidth(3),},
                  border: TableBorder.symmetric(inside: const BorderSide(color: Colors.grey)),
                  children: [
                    TableRow(children: [colHeadingMkText('Roll'),colHeadingMkText('Name'),colHeadingMkText('Attendance'),]),
                    if(futureDate || (presentDate && _selectedPeriod.index>currentPeriod.index))for(int index=0;index<_studentList.length;index++)...[TableRow(children: [rollNameMkText('0${index+1}'),rollNameMkText(_studentList[index]),attendanceTextWidget(index,true) ]),],
                    if(pastDate || _selectedPeriod.index<currentPeriod.index)for(int index=0;index<_studentList.length;index++)...[TableRow(children: [rollNameMkText('0${index+1}'),rollNameMkText(_studentList[index]),(_attendanceList[index]==Attendance.notAssigned)?attendanceBtnWidget(index):attendanceTextWidget(index)]),],
                    if(presentDate && _selectedPeriod.index==currentPeriod.index)for(int index=0;index<_studentList.length;index++)...[TableRow(children: [rollNameMkText('0${index+1}'),rollNameMkText(_studentList[index]),(_attendanceList[index]==Attendance.notAssigned)?attendanceBtnWidget(index):attendanceTextWidget(index)]),],
                  ],
                ),
              ),
              const SizedBox(height: 60,)
            ],
          ),
        ),
        Positioned(bottom: 5,child:MkTextButton(text: 'Full Attendance',bgColor: widget.fullAttendanceButtonColor,))
      ],
    );
  }
}
