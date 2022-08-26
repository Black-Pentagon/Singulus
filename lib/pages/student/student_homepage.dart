import 'package:flutter/material.dart';
import 'package:mk_flutter_helper/mk_flutter_helper.dart';
import '../../common_widgets.dart';
import '../../global_data.dart';
import '../../mk_theme_provider.dart';

Color gradient1 = const Color(0xff52cbbe);
Color gradient2 = const Color(0xff5b89d7);
Color tabTextColor = const Color(0xff2e988d);
Color selectedDateColor1 = const Color(0xff59decf);
Color selectedDateColor2 = const Color(0xff7d9fda);
Color notSelectedDateColor1 = const Color(0xff519f94);
Color notSelectedDateColor2 = const Color(0xff74d2c9);
Color headingTextColor = const Color(0xffffffff);
Color calenderColor = const Color(0xff9fdcd5);

const String annieUseYourTelescope = SingulusFonts.annieUseYourTelescope;
const String alegreyaSans = SingulusFonts.algreya;
const String josefinSlab = SingulusFonts.josefinSlab;
const String blinker = SingulusFonts.blinker;

Map<String, List<Period>> studentTimeTable = {
  Day.mon: [
    Period(index:0,
        number: '1st',
        time: '10:15 -index:, 11:00',
        subject: 'Python Lab',
        place: 'CL09'),
    Period(index:1,
        number: '2nd',
        time: '11:00 - 11:45',
        subject: 'Python Lab',
        place: 'CL09'),
    Period(index:2,number: '3rd', time: '11:45 - 12:30', subject: 'AI'),
    Period(index:3,number: 'Break', time: '12:30 - 13:00', subject: 'Break'),
    Period(index:4,number: '4th', time: '13:00 - 13:45', subject: 'OOPM'),
    Period(index:5,
        number: '5th',
        time: '13:45 - 14:30',
        subject: 'Intro. to Prob & Stats'),
    Period(index:6,number: '6th', time: '14:30 - 15:15', subject: 'DAS'),
    Period(index:7,
        number: '7th', time: '15:15 - 16:00', subject: 'Intro. to Prob & Stats')
  ],
  Day.tue: [
    Period(index:0,number: '1st', time: '10:15 - 11:00', subject: 'DAS'),
    Period(index:1,number: '2nd', time: '11:00 - 11:45', subject: 'AI'),
    Period(index:2,
        number: '3rd',
        time: '11:45 - 12:30',
        subject: 'Intro. to Prob & Stats'),
    Period(index:3,number: 'Break', time: '12:30 - 13:00', subject: 'Break'),
    Period(index:4,number: '4th', time: '13:00 - 13:45', subject: 'Tech. Comm'),
    Period(index:5,number: '5th', time: '13:45 - 14:30', subject: 'OOPM'),
    Period(index:6,
        number: '6th',
        time: '14:30 - 15:15',
        subject: 'OOPM',
        place: 'CL11',
        changedFrom: 'DAS Lab'),
    Period(index:7,
        number: '7th',
        time: '15:15 - 16:00',
        subject: 'OOPM',
        place: 'CL11',
        changedFrom: 'DAS Lab'),
  ],
  Day.wed: [
    Period(index:0,number: '1st', time: '10:15 - 11:00', subject: 'DAS'),
    Period(index:1,number: '2nd', time: '11:00 - 11:45', subject: 'OOPM'),
    Period(index:2,number: '3rd', time: '11:45 - 12:30', subject: 'Tech. Comm'),
    Period(index:3,number: 'Break', time: '12:30 - 13:00', subject: 'Break'),
    Period(index:4,
        number: '4th',
        time: '13:00 - 13:45',
        subject: 'AI(Batch-A)',
        place: 'AI Lab'),
    Period(index:5,
        number: '5th',
        time: '13:45 - 14:30',
        subject: 'AI(Batch-A)',
        place: 'AI Lab'),
    Period(index:6,
        number: '6th',
        time: '14:30 - 15:15',
        subject: 'Intro. to Prob & Stats'),
    Period(index:7,number: '7th', time: '15:15 - 16:00', subject: 'AI'),
  ],
  Day.thur: [
    Period(index:0,number: '1st', time: '10:15 - 11:00', subject: 'DAS'),
    Period(index:1,
        number: '2nd',
        time: '11:00 - 11:45',
        subject: 'AI(Batch-B)',
        place: 'AI Lab'),
    Period(index:2,
        number: '3rd',
        time: '11:45 - 12:30',
        subject: 'AI(Batch-B)',
        place: 'AI Lab'),
    Period(index:3,number: 'Break', time: '12:30 - 13:00', subject: 'Break'),
    Period(index:4,number: '4th', time: '13:00 - 13:45', subject: 'Tech. Comm'),
    Period(index:5,
        number: '5th',
        time: '13:45 - 14:30',
        subject: 'Tech. Comm',
        place: 'CL11',
        changedFrom: 'Intro. to Prob & Stats'),
    Period(index:6,number: '6th', time: '14:30 - 15:15', subject: 'DAS', place: 'CL07'),
    Period(index:7,number: '7th', time: '15:15 - 16:00', subject: 'DAS', place: 'CL07'),
  ],
  Day.fri: [
    Period(index:0,
        number: '1st',
        time: '10:15 - 11:00',
        subject: 'Python Lab',
        place: 'CL07'),
    Period(index:1,
        number: '2nd',
        time: '11:00 - 11:45',
        subject: 'Python Lab',
        place: 'CL07'),
    Period(index:2,number: '3rd', time: '11:45 - 12:30', subject: 'AI'),
    Period(index:3,number: 'Break', time: '12:30 - 13:00', subject: 'Break'),
    Period(index:4,number: '4th', time: '13:00 - 13:45', subject: 'OOPM'),
    Period(index:5,
        number: '5th',
        time: '13:45 - 14:30',
        subject: 'OOPM',
        place: 'CL11',
        currentPeriod: true),
    Period(index:6,number: '6th', time: '14:30 - 15:15', subject: 'Tech. Comm'),
    Period(index:7,
        number: '7th',
        time: '15:15 - 16:00',
        subject: 'Tech. Comm',
        changedFrom: 'DAS'),
  ],
  Day.sat: [],
  Day.sun: [],
};

class StudentHomePage extends StatefulWidget {
  const StudentHomePage({Key? key}) : super(key: key);

  @override
  State<StudentHomePage> createState() => _StudentHomePageState();
}

class _StudentHomePageState extends State<StudentHomePage>
    with TickerProviderStateMixin {
  DateTime _selectedDate = DateTime(2022, 8, 26);
  late int _currentMonthKey = _selectedDate.month;
  late String _currentDay = getDay(_selectedDate);
  late List<int> _calenderDates =
      List<int>.generate(daysInMonth(_selectedDate), (i) => i + 1);
  late List<Period> _todayPeriods = studentTimeTable[_currentDay]!;
  late int _numOfPeriodsChanged = getNumOfPeriodChanged(_todayPeriods);

  late final ScrollController _dateScrollController;
  late final TabController _tabController;
  late final ScrollController _periodController;

  final double _dateBubbleWidth = 100.0 + 5.8;

  @override
  void initState() {
    super.initState();
    _dateScrollController = ScrollController(
        initialScrollOffset: _dateBubbleWidth * _selectedDate.day);
    _tabController = TabController(length: 3, vsync: this, initialIndex: 0);
    _periodController = ScrollController(
        initialScrollOffset: getCurrentPeriodIndex(_todayPeriods) * 145);
  }

  @override
  void dispose() {
    _dateScrollController.dispose();
    _tabController.dispose();
    super.dispose();
  }

  void _travelToSelectedDate(DateTime date) {
    _dateScrollController.animateTo(
      (date.day - 1) * _dateBubbleWidth,
      duration: const Duration(seconds: 1),
      curve: Curves.fastOutSlowIn,
    );
  }

  void _travelToCurrentPeriod() {
    _periodController.animateTo(
      getCurrentPeriodIndex(_todayPeriods) * 145,
      duration: const Duration(seconds: 1),
      curve: Curves.fastOutSlowIn,
    );
  }

  void _onDateTapped(int newDateIndex) {
    setState(() {
      _selectedDate =
          DateTime(2022, _currentMonthKey, _calenderDates[newDateIndex]);
      _currentDay = getDay(_selectedDate);
      _todayPeriods = studentTimeTable[_currentDay]!;
      _numOfPeriodsChanged = getNumOfPeriodChanged(_todayPeriods);
      _travelToSelectedDate(_selectedDate);
    });
  }

  Future<void> _pickFromCalender(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: _selectedDate,
        firstDate: DateTime(2022, 4),
        lastDate: DateTime(2022, 12, 31),
        builder: (context, child) {
          return MkChangeTheme(
            color: calenderColor,
            child: child ?? Container(),
          );
        });
    if (picked != null && picked != _selectedDate) {
      _setCurrentDate(picked);
    }
  }

  void _setCurrentDate(DateTime date) {
    setState(() {
      _selectedDate = date;
      _currentMonthKey = _selectedDate.month;
      _currentDay = getDay(_selectedDate);
      _calenderDates =
          List<int>.generate(daysInMonth(_selectedDate), (i) => i + 1);
      _todayPeriods = studentTimeTable[_currentDay]!;
      _numOfPeriodsChanged = getNumOfPeriodChanged(_todayPeriods);
      _travelToSelectedDate(_selectedDate);
      _travelToCurrentPeriod();
    });
  }

  @override
  Widget build(BuildContext context) {
    Color theme = Watchers.gcfct(context, MkColor.theme);

    return SafeArea(
        child: Scaffold(
      backgroundColor: theme,
          // width: gcw(context),
          // height: gch(context),
          // decoration: const BoxDecoration(image: DecorationImage(image: GlobalData.blurredBg3,fit: BoxFit.cover)),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            MkAnimated(
              beginOffset: const Offset(0, -1),
              endOffset: const Offset(0, 0),
              child: SingulusAppBar(
                headingPadding: const EdgeInsets.only(left: 25, right: 25),
                gradient: LinearGradient(colors: [gradient1, gradient2]),
                headingChild: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                MkText(
                                  text: 'Hi, Harish',
                                  textColor: headingTextColor,
                                  googleFont: blinker,
                                  size: 35,
                                ),
                                const CircleAvatar(child: Icon(Icons.person))
                              ]),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                MkText(
                                  text: '<Enrollment Number>',
                                  textColor: headingTextColor,
                                  googleFont: alegreyaSans,
                                  size: 30,
                                )
                              ]),
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MkText(
                              text: 'Student of <Branch>',
                              textColor: headingTextColor,
                              googleFont: josefinSlab,
                              size: 28),
                        ],
                      ),
                    ]),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              children: [
                SizedBox(
                  height: 138,
                  width: 330,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      controller: _dateScrollController,
                      itemCount: _calenderDates.length,
                      itemBuilder: (con, index) {
                        bool isSelected = index == _selectedDate.day - 1;
                        return DateBubble(
                            onTap: () => _onDateTapped(index),
                            date: _calenderDates[index],
                            month: calenderMonth[_currentMonthKey],
                            day: getDay(DateTime(
                                2022, _currentMonthKey, _calenderDates[index])),
                            colorList: (isSelected)
                                ? [selectedDateColor1, selectedDateColor2]
                                : [
                                    notSelectedDateColor1,
                                    notSelectedDateColor2
                                  ],
                            textColor:
                                (isSelected) ? Colors.black87 : Colors.white);
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 17),
                  child: Column(
                    children: [
                      GestureDetector(
                          onTap: () => _setCurrentDate(today),
                          child: Icon(
                            Icons.refresh,
                            size: 35,
                            color: notSelectedDateColor1,
                          )),
                      const SizedBox(
                        height: 15,
                      ),
                      GestureDetector(
                          onTap: () => _pickFromCalender(context),
                          child: Icon(
                            Icons.calendar_today_sharp,
                            size: 35,
                            color: notSelectedDateColor1,
                          )),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 4,
            ),
            Row(
              children: [
                TabBar(
                  controller: _tabController,
                  labelStyle: MkText.style(
                      googleFont: josefinSlab,
                      size: 27,
                      fontWeight: FontWeight.w500),
                  labelPadding: const EdgeInsets.only(left: 15, right: 15),
                  labelColor: tabTextColor,
                  unselectedLabelColor: Colors.grey,
                  indicatorColor: selectedDateColor2,
                  isScrollable: true,
                  indicatorSize: TabBarIndicatorSize.label,
                  tabs: [
                    Stack(children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 5.0, right: 5),
                        child: Tab(text: "Timetable"),
                      ),
                      if (_numOfPeriodsChanged > 0)
                        Positioned(
                            right: 0,
                            child: MkWidgetWithCircleBg(
                              text: '$_numOfPeriodsChanged',
                            ))
                    ]),
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
                controller: _tabController,
                children: [
                  TimeTableWidget(
                    textFont: josefinSlab,
                    todayPeriods: _todayPeriods,
                    date: _selectedDate,
                    controller: _periodController,
                    currentPeriodNumberColor: gradient1,
                    currentPeriodColor1: selectedDateColor1,
                    currentPeriodColor2: selectedDateColor2,
                  ),
                  AttendanceWidget(
                    attendanceMap: getAttMap(_selectedDate,
                        studentTimeTable[getDay(_selectedDate)]!),
                    subjectFont: josefinSlab,
                    fullAttendanceButtonColor: selectedDateColor1,
                    overFlowColor: gradient1,
                  ),
                  EventsWidget(
                      showNotice: _selectedDate == today,
                      pinnedBgColor: selectedDateColor2,
                      todayBgColor: gradient1,
                      overFlowColor: gradient2,
                      everyEventBgColor: selectedDateColor1)
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}

// Container(
// padding: EdgeInsets.all(2),
// decoration: BoxDecoration(
// color: Colors.transparent,
// borderRadius: BorderRadius.circular(15),
// border: Border.all(width: 2,color: gradient2)
// ),
// child: Container(alignment: Alignment.center,
// padding: EdgeInsets.symmetric(vertical:10,horizontal: 20),
// decoration: BoxDecoration(
// color: Colors.white,
// borderRadius: BorderRadius.circular(12),
// ),
// child: MkText(text: '1',size: 24,googleFont: font,),
// ),
// ),


