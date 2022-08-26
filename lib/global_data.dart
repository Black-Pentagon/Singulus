
import 'package:flutter/material.dart';

import 'mk_theme_provider.dart';

enum UserType {principal, teacher, student, invalid}

UserType getUserType(String email){
  String principalEmail = "principal@college.org";
  String teacherEmail = "teacher@college.org";
  String studentEmail = "student@college.net";
  return (email==principalEmail)?UserType.principal:(email==teacherEmail)?UserType.teacher:(email==studentEmail)?UserType.student:UserType.invalid;
}

class SingulusFonts{
  static const String algreya = 'Alegreya Sans';
  static const String annieUseYourTelescope = 'Annie Use Your Telescope';
  static const String blinker = 'Blinker';
  static const String josefinSlab = 'Josefin Slab';
  static const String oswald ='Oswald';
  static const String ptSans ='PT Sans';
  static const String rancho ='Rancho';
  static const String sniglet ='Sniglet';
  static const String teko ='Teko';
  static const String vibur ='Vibur';
}

class GlobalData{
  static const String appName = 'Singulus';

  static const AssetImage loginPageBackGround =  AssetImage('images/login_background.png');
  static const AssetImage principalBg =  AssetImage('images/principalBg.png');
  static const AssetImage teacherBg =  AssetImage('images/teacherBg.png');
  static const AssetImage studentBg =  AssetImage('images/studentBg.png');
  static const AssetImage timetableBg =  AssetImage('images/timetableBg.png');
  static const AssetImage hodBg =  AssetImage('images/hodBg.png');
  static const AssetImage splashScreen =  AssetImage('images/splash_screen.png');
  static const AssetImage geekfest =  AssetImage('images/geekfest.jpeg');
  static const AssetImage blurredBg1 =  AssetImage('images/blurredBg1.png');
  static const AssetImage blurredBg2 =  AssetImage('images/blurredBg2.png');
  static const AssetImage blurredBg3 =  AssetImage('images/blurredBg3.png');
  static const String geekfestStr = """🔥🔥 GeekFest 1.0 🔥🔥

“The only possible effect one can have on the world is through unpopular ideas.”

-	Vivienne Westwood

With the aforementioned goal in mind, Team GFG Gyan Ganga is all set to bring up to you an amazing opportunity, to showcase your skills and ideas. 💡✨

So why let this chance pass by? Seize it and get the best out of yourself. 💥

Register for  GeekFest 1.0 , a hackathon that provides you with the most awaited opportunity.💫

📌 Categories for the project: 

👉 Earth 
👉 Lifestyle
👉 Education
👉 Health

Additionally, we assure you that, participating in this hackathon will be a worthwhile experience for you and each team member will be winning some amazing rewards as mentioned below:

♦️ Each Member of the Winner Team  – 1200/- INR GFG-discount coupons 
♦️ Each Member of 1st Runner up Team – 800/-  INR GFG-discount coupons
♦️ Each Member of 2nd Runner up Team – 500/- INR GFG-discount coupons
♦️ All other participants – 300/- GFG-discount coupons

📌 Hackathon Details: 

👉 Date : August 27th, 2022
👉 Time : 10:30 am
👉 Mode : Online
👉 Eligibility : 2nd and 3rd year students.
👉 Only Software projects will be accepted 

To register for the hackathon, kindly fill up the form, using the link below:
https://forms.gle/9Jga3XsMckyiyUZo8

📌 Prior to the hackathon, keep the PowerPoint presentations, use cases and technology stack for your project ready!

📌 All the participants should join the following WhatsApp group to recieve updates about hackathon!
https://chat.whatsapp.com/KPn3rKelZG6AhCW0PNHipB

📌 Further details of the hackathon will be provided once you are registered for the same!""";
  static const String krisJamStr = """Greetings everyone✨ Since Krishna Janmastami  is on its way, so we are planning to make a reel on our Club Instagram handle in which we will be featuring 📸:- 

1. Childhood pictures of you when you were dressed like Krishna/Radha.

2. Pictures of you making Rangolis etc.

We would be glad if teachers and faculties participate in any manner and encourage the spirit of the festival Janmastmi✨
These pictures will be featured in our upcoming newsletter as well.

So feel free to share them on the contacts mentioned below👇🏽

Harish :- 1234567890
Dhulub :- 0987654321

Last date of submission :- 20th Aug (12pm)
And also share your respective Instagram handles so that we can tag you in the reel💥

Best regards - Black Pentagon""";
  static const String feesStr = """❗❗ATTENTION❗❗
You all need to pay your due fees by this month.
And fill your examination form through college portal.
Before June 30, 2022.
DO NOT WAIT FOR LAST DATE. 
else your form will  not be forwarded. And then  you will have to pay late fee as well.""";
  static const String clubStr = """👋👋Greetings From The Music Club of College🎼🎤🎹
.
🎗️Inductions 2022🎗️
.
🌟The club will be working on assisting music enthusiast students, bringing them together, help them to grow on their skills, work on their public engagement, team work as a band and many more. 
.
🎯We Cover Following Segments:
- Singing
- Musical Instruments
- Stand-up Performances
- Creative Writing /story writing/Poetry/Shayri 

🗓️ *Date of Induction : 27th August 2022
⏱️ Timing : from 1pm onwards
👉 To join, do fill the form : https://forms.gle/123456
(On spot registrations also accepted)
. 
📍Location will be updated on our club's Instagram Story so make sure you follow us
. 
👉For further updates on Upcoming Activities, Events, Fests, 
Do Follow us on instagram:

For any queries contact: 
1234567890(Harish)
0987654321(Dhulub)""";

  static UserType currentUser = UserType.student;

  static int lastThemeIndex = 0;

  static bool principalLoggedIn = false;

  static Map<MkColor, Color> darkTheme = {
    MkColor.contrast: const Color(0xffffffff),
    MkColor.theme: const Color(0xff000000),
    MkColor.themeLight: const Color(0xffa8a8a8),
    MkColor.statusBar: const Color(0xAD6BF6DA),
    // MkColor.statusBar: const Color(0xff274ad7),
    MkColor.navBar: const Color(0xff000000),
    MkColor.themeRed:const Color(0xBAFB1717),
    MkColor.themeBlue:const Color(0xAD6BF6DA),
    // MkColor.themeYellow:const Color(0xADFFFF00),
  };

  static Map<MkColor, Color> lightTheme = {
    MkColor.theme: const Color(0xeefdfdfd),
    MkColor.tile: const Color(0xff97a9ff),
    MkColor.contrast: const Color(0xff000000),
    MkColor.themeLight: const Color(0xff5974F3),
    MkColor.themeLight2: const Color(0xff738afa),
    MkColor.grey: const Color(0xff738afa),
    MkColor.statusBar: const Color(0xff000000),
    // MkColor.statusBar: const Color(0xff274ad7),
    MkColor.navBar: const Color(0xff000000),
    MkColor.purple: const Color(0xFF111569),
    MkColor.green: const Color(0xFF1E500E),
    MkColor.red: const Color(0xFF810B0B),
    MkColor.yellow: const Color(0xFF675709),
    MkColor.blue: const Color(0xFF0C5960),
    MkColor.themeRed:const Color(0xBAFB1717),
    MkColor.themeBlue:const Color(0xAD6BF6DA),
    // MkColor.themeYellow:const Color(0xADFFFF00),
  };

}