import 'package:flutter/material.dart';
import 'package:new_travel_app/screens/home_screen.dart';
import 'package:new_travel_app/screens/info_screen.dart';
import 'style/app_style.dart';
import 'style/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main(){
  runApp(
    MyApp(),
    );
}

class MyApp extends StatefulWidget{
  const MyApp({Key ? key}) : super(key: key);
  
  @override
  State<MyApp> createState() => _MyAppState();

}

class _MyAppState extends State<MyApp>{
  int _selectindex = 0;
  void _onItemTap(int index){
    setState(() {
      _selectindex = index;
    });
  }

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: kLighterWhite,
        body: InfoScreen(),
        bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          backgroundColor: kWhite,
          items: [
            BottomNavigationBarItem(icon: _selectindex == 0 ?
            SvgPicture.asset('assets/home_selected_icon.svg'):
            SvgPicture.asset('assets/home_unselected_icon.svg'),
              label: '',
            ),
            BottomNavigationBarItem(icon: _selectindex == 1 ?
            SvgPicture.asset('assets/bookmark_selected_icon.svg'):
            SvgPicture.asset('assets/bookmark_unselected_icon.svg'),
              label: '',
            ),
            BottomNavigationBarItem(icon: _selectindex == 2 ?
            SvgPicture.asset('assets/notification_selected_icon.svg'):
            SvgPicture.asset('assets/notification_unselected_icon.svg'),
              label: '',
            ),
            BottomNavigationBarItem(icon: _selectindex == 3 ?
            SvgPicture.asset('assets/profile_selected_icon.svg'):
            SvgPicture.asset('assets/profile_unselected_icon.svg'),
              label: '',
            ),
          ],
          currentIndex: _selectindex,
          onTap: _onItemTap,
        ),
      ),
    );
  }
}
