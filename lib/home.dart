import 'package:flutter/material.dart';
import 'package:project/screens/accountscreen.dart';
import 'package:project/screens/details.dart';
import 'package:project/screens/home_screen.dart';
import 'package:project/screens/managescreen.dart';
import 'package:project/screens/order_screen.dart';
import 'package:project/screens/productscreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int indexOfNav = 0;
  final pages = [
    const ScreenHome(),
    const OrderScreen(),
    const ManageScreen(),
    const ProductScreen(),
    const Details(),
    const AccountScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[indexOfNav],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: indexOfNav,
        type: BottomNavigationBarType.fixed,
        onTap: (value) {
          setState(() {
            indexOfNav = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bolt_outlined),
            label: 'orders',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.manage_history),
            label: 'manage ',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.production_quantity_limits),
            label: 'Products',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notes),
            label: 'Details ',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Accounts',
          )
        ],
      ),
    );
  }
}
