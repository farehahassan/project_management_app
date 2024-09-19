import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';
import 'package:project_management_app/features/Auth/login/views/login_screen.dart';
import 'package:project_management_app/features/Home/views/home_screen.dart';
import 'package:project_management_app/utils/constants/colors.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _currentIndex = 0;

  // List of screens for navigation
  final List<Widget> _screens = [
    HomeScreen(),
    TaskScreen(),
    AddScreen(),
    CalendarScreen(),
    WorkspaceScreen(),
  ];

  void _onNavItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex], // Show the selected screen
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 6.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            buildBottomNavigationItem(IconlyBold.home, "Home", 0),
            buildBottomNavigationItem(IconlyBold.paper, "Your Task", 1),
            SizedBox(width: 40), // Space for the FAB
            buildBottomNavigationItem(IconlyBold.calendar, "Calendar", 3),
            buildBottomNavigationItem(Icons.grid_view, "Workspace", 4),
          ],
        ),
        color: const Color.fromARGB(255, 251, 248, 248),
        elevation: 6.sp,
        shadowColor: AColors.black,
        clipBehavior: Clip.hardEdge,
      ),
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        onPressed: () {
          setState(() {
            _currentIndex = 2; // FAB navigates to the middle screen
          });
        },
        child: Icon(
          Icons.add,
          color: AColors.white,
          size: 30.sp,
        ),
        backgroundColor: AColors.primary,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Widget buildBottomNavigationItem(IconData icon, String label, int index) {
    return GestureDetector(
      onTap: () => _onNavItemTapped(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: _currentIndex == index
                ? AColors.primary
                : const Color.fromARGB(255, 190, 189, 189),
          ),
          SizedBox(
            height: 4.h,
          ),
          Text(
            label,
            style: TextStyle(
              fontFamily: 'Outfit',
              color: _currentIndex == index
                  ? AColors.primary
                  : const Color.fromARGB(255, 190, 189, 189),
            ),
          ),
        ],
      ),
    );
  }
}

// Screens

// class HomeScreenContent extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Text('Home Screen', style: TextStyle(fontSize: 24)),
//     );
//   }
// }

class TaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Task Screen', style: TextStyle(fontSize: 24)),
    );
  }
}

class AddScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Add Screen (FAB)', style: TextStyle(fontSize: 24)),
    );
  }
}

class CalendarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Calendar Screen', style: TextStyle(fontSize: 24)),
    );
  }
}

class WorkspaceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Workspace Screen', style: TextStyle(fontSize: 24)),
    );
  }
}
