import 'package:demo_app/widgets/screens.dart';
import 'package:demo_app/widgets/signInScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(fontFamily: 'Montserrat'),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
  bool isLoggedIn = false;
  final Color blueTextColor = Color(0xFF010026);
  final Color lightBlueAccent = Color(0xFFBCBBF6);

  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  void signIn() {
    setState(() {
      isLoggedIn = true;
    });
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      print(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return isLoggedIn
        ? Scaffold(
            backgroundColor: Colors.white,
            body: SafeArea(child: screens.elementAt(_selectedIndex)),
            bottomNavigationBar: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                  top: BorderSide(color: Colors.grey[200]!, width: 1.0),
                ),
              ),
              child: BottomNavigationBar(
                unselectedItemColor: Colors.grey,
                showSelectedLabels: false,
                showUnselectedLabels: false,
                items: <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    label: '',
                    icon: Icon(Icons.trending_up_rounded),
                  ),
                  BottomNavigationBarItem(
                    label: '',
                    icon: Icon(Icons.list_rounded),
                  ),
                  BottomNavigationBarItem(
                    label: '',
                    icon: Icon(Icons.paid_rounded),
                  ),
                  BottomNavigationBarItem(
                    label: '',
                    icon: Icon(Icons.import_contacts_rounded),
                  ),
                  BottomNavigationBarItem(
                    label: '',
                    icon: Icon(Icons.sort_rounded),
                  ),
                ],
                currentIndex: _selectedIndex,
                selectedItemColor: blueTextColor,
                onTap: _onItemTapped,
              ),
            ),
          )
        : SignInScreen(signIn: signIn);
  }
}
