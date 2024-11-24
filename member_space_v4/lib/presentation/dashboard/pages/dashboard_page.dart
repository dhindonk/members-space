import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:members_space_v4/presentation/dashboard/pages/home_page.dart';
import '../../../../core/assets/assets.gen.dart';
import '../../../core/core.dart';

class DashboardPage extends StatefulWidget {
  final int currentTab;
  const DashboardPage({
    Key? key,
    required this.currentTab,
  }) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  late int _selectedIndex;
  final PageStorageBucket _bucket = PageStorageBucket();

  @override
  void initState() {
    _selectedIndex = widget.currentTab;
    super.initState();
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        bucket: _bucket,
        child: _getPage(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(25),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 25,
          ),
          child: GNav(
            selectedIndex: _selectedIndex,
            onTabChange: _onItemTapped,
            tabBorderRadius: 15,
            duration: const Duration(milliseconds: 200),
            gap: 8,
            color: Color.fromARGB(255, 172, 172, 172),
            activeColor: AppColors.primary,
            iconSize: 24,
            tabBackgroundColor: AppColors.primary.withOpacity(0.2),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            tabs: [
              GButton(
                icon: Icons.home,
                text: 'Home',
                leading: SizedBox(
                  width: 24,
                  height: 24,
                  child: _selectedIndex == 0
                      ? Assets.icons.home.svg()
                      : Assets.icons.home.svg(
                          colorFilter: const ColorFilter.mode(
                            Color.fromARGB(255, 172, 172, 172),
                            BlendMode.srcIn,
                          ),
                        ),
                ),
              ),
              GButton(
                icon: Icons.search,
                text: 'Chat',
                leading: SizedBox(
                  width: 24,
                  height: 24,
                  child: _selectedIndex == 1
                      ? Assets.icons.chat.svg()
                      : Assets.icons.chat.svg(
                          colorFilter: const ColorFilter.mode(
                            Color.fromARGB(255, 172, 172, 172),
                            BlendMode.srcIn,
                          ),
                        ),
                ),
              ),
              GButton(
                icon: Icons.shopping_cart,
                text: 'Schedule',
                leading: SizedBox(
                  width: 24,
                  height: 24,
                  child: _selectedIndex == 2
                      ? Assets.icons.date.svg()
                      : Assets.icons.date.svg(
                          colorFilter: const ColorFilter.mode(
                            Color.fromARGB(255, 172, 172, 172),
                            BlendMode.srcIn,
                          ),
                        ),
                ),
              ),
              GButton(
                icon: Icons.person,
                text: 'Profile',
                leading: SizedBox(
                  width: 24,
                  height: 24,
                  child: _selectedIndex == 3
                      ? Assets.icons.profile.svg()
                      : Assets.icons.profile.svg(
                          colorFilter: const ColorFilter.mode(
                            Color.fromARGB(255, 172, 172, 172),
                            BlendMode.srcIn,
                          ),
                        ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _getPage(int index) {
    switch (index) {
      case 0:
        return const HomePage(key: PageStorageKey('HomePage'));
      case 1:
        return Center(
          child: Text(
            '2',
            style: TextStyle(
              fontSize: 100,
            ),
          ),
        );
      // return const SearchPage(key: PageStorageKey('SearchPage'));
      case 2:
        return Center(
          child: Text(
            '3',
            style: TextStyle(
              fontSize: 100,
            ),
          ),
        );
      // return const CartPage(key: PageStorageKey('CartPage'));
      case 3:
        return Center(
          child: Text('Profile'),
        );
      // return const ProfilePage(key: PageStorageKey('ProfilePage'));
      default:
        return const HomePage(key: PageStorageKey('HomePage'));
    }
  }
}
