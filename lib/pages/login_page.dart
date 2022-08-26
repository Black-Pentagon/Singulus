import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mk_flutter_helper/mk_flutter_helper.dart';
import 'package:mk_flutter_helper/relative_dimension.dart';
import '../global_data.dart';
import '../mk_theme_provider.dart';
import 'home_page.dart';

String capitalize(String s) => s[0].toUpperCase() + s.substring(1);

enum PageState { login,forgotPassword }

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  PageState _pageState = PageState.login;
  String? _errorEmail;
  String? _errorPassword;
  String _emailVal = '';
  String _passwordVal = '';


  @override
  Widget build(BuildContext context) {
    Color theme = Watchers.gcfct(context,MkColor.theme);
    Color contrast = Watchers.gcfct(context,MkColor.contrast);
    const String headingFont = 'Alegreya Sans';
    const String subHeadingFont = SingulusFonts.blinker;
    const String inputFont = SingulusFonts.josefinSlab;
    const Color blue = Colors.lightBlue;
    TextStyle inputTextStyle = MkText.style(googleFont: inputFont,size: 23,fontWeight: FontWeight.w600);

    void setEmail(String email)=>setState(() {_emailVal = email.trim();_errorEmail=null;});
    void setPassword(String password)=>setState(() {_passwordVal = password.trim();_errorPassword=null;});

    Future<void> checkDetails() async {
      String? eError, pError;
      if (_emailVal == '') {
        eError = 'email cannot be empty!';
      }
      else {
        bool emailValid = RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
            .hasMatch(_emailVal);
        if (!emailValid) {
          eError = 'enter valid email!';
        }
      }
      if (_passwordVal == '') {
        pError = 'password cannot be empty!';
      }
      if (eError != null || pError != null) {
        setState(() {
          _errorEmail = eError;
          _errorPassword = pError;
        });
      }
      if (eError == null && pError == null) {
        if (_pageState == PageState.login) {
          UserType userType = getUserType(_emailVal);
          if (userType == UserType.invalid || userType == UserType.principal) {
            setState(() {
              _errorEmail = 'email not found';
            });
          }
          else if (_passwordVal!='abcd1234') {
            setState(() {
              _errorEmail = 'incorrect password';
            });
          }
          else {
            GlobalData.currentUser = userType;
            travelToPage(context, const HomePage());
          }
        }
      }
    }

    void switchPageState(){
       setState(() {
         if(_pageState==PageState.login) {_pageState=PageState.forgotPassword;}
         else {_pageState=PageState.login;}
      });
    }

    return WillPopScope(
      onWillPop: () { SystemNavigator.pop();
      return Future.value(true); },
      child: MkUnFocus(
        child: SafeArea(
            child: Scaffold(
              resizeToAvoidBottomInset: false,
              backgroundColor: theme,
              body: SingleChildScrollView(
                child: Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(alignment: Alignment.center,
                        width: gcw(context),
                        height: gch(context),
                        decoration: const BoxDecoration(
                            image: DecorationImage(image: GlobalData.loginPageBackGround,
                              fit: BoxFit.cover,
                            )
                        ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(height: 65),
                          MkText(text: 'SINGULUS',googleFont: headingFont,size: 58,textColor: contrast,),
                          const SizedBox(height: 40),
                          MkText(text: 'Email',googleFont: subHeadingFont,size: 27.7,textColor: contrast,),
                          MkTextFormField(textInputAction: TextInputAction.next,underlineWidth: 2,onTextChange:setEmail,width: 300,cursorColor: contrast,textStyle: inputTextStyle,errorText: _errorEmail,initialValue: _emailVal,),
                          const SizedBox(height: 30),
                          MkText(text: 'Password',googleFont: subHeadingFont,size: 24.7,textColor: contrast,),
                          MkTextFormField(textInputAction: TextInputAction.done,underlineWidth: 2,onTextChange:setPassword,width: 300,cursorColor: contrast,textStyle: inputTextStyle,obscureText: true,suffixIconSize: 20,errorText: _errorPassword,suffixIconColorWhenHidden: blue,initialValue: _passwordVal,),
                          const SizedBox(height: 15,),
                          SizedBox(width:300,
                            child: Row(mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                GestureDetector(onTap: switchPageState,child: MkText(text:'forgot password?',googleFont: inputFont,size: 21,textColor: contrast,fontWeight: FontWeight.w600,)),
                              ],
                            ),
                          ),
                          const SizedBox(height: 60,),
                          SizedBox(width: 300,child: Row(mainAxisAlignment: MainAxisAlignment.end,children: [
                            GestureDetector(
                              onTap: checkDetails,
                              child: Material(
                                color: Colors.transparent,
                                shape: CircleBorder(
                                    side: BorderSide(color: contrast,width: 2)
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(3.7),
                                  child: Icon(Icons.arrow_forward_sharp, color: contrast,size: 35,),
                                ),
                              ),
                            )
                          ],),)
                          // Container(child: MkText(text: 'Login',),)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )),
      ),
    );
  }
}


