import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mk_flutter_helper/mk_flutter_helper.dart';
import 'package:provider/provider.dart';
import 'package:singulus/pages/login_page.dart';

import 'global_data.dart';
import 'mk_theme_provider.dart';

Future<void> main() async {
  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('google_fonts/OFL.txt');
    yield LicenseEntryWithLineBreaks(['google_fonts'], license);
  });

  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(
      MultiProvider(
          providers: [
            ChangeNotifierProvider(
              create: (_) => MkThemeProvider(),
            ),
          ],
          builder: (context, child) {
            SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
              systemNavigationBarColor: Watchers.gcfct(
                  context, MkColor.navBar), // navigation bar color
              statusBarColor: Watchers.gcfct(
                  context, MkColor.statusBar), // status bar color
            ));
            return const SingulusApp();
          }
      ),
    );
  });
}


class SingulusApp extends StatelessWidget {
  const SingulusApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: MyCustomScrollBehavior(),
      title: GlobalData.appName,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.lightBlue),
      home: const LoginPage(),
    );
  }
}
