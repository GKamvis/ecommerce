import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/presentation/views/Product_page/products_page.dart';
import 'package:myapp/presentation/views/Profile_page/profile_page.dart';
import 'package:myapp/presentation/views/Search_page/search_page.dart';
import '../cubit/navigation_cubits/navigation_bloc.dart';
import 'Home_page/home_page.dart';

class MyBottomNavigation extends StatelessWidget {
  // ignore: use_super_parameters
  MyBottomNavigation({Key? key}) : super(key: key);

  final List<Widget> pages = [
    const HomePage(),
     SearchPage(),
    const ProductsPage(),
    const ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => NavigationBloc(),
      child: Scaffold(
       
        body: BlocBuilder<NavigationBloc, NavigationState>(
          builder: (context, state) {
            return pages[state.selectedIndex];
          },
        ),
        bottomNavigationBar: BlocBuilder<NavigationBloc, NavigationState>(
          builder: (context, state) {
            return BottomNavigationBar(
              items: const [
                BottomNavigationBarItem(icon: Icon(CupertinoIcons.house), label: 'Home'),
                BottomNavigationBarItem(icon: Icon(CupertinoIcons.search), label: 'Search'),
                BottomNavigationBarItem(icon: Icon(CupertinoIcons.bag), label: 'Product'),
                BottomNavigationBarItem(icon: Icon(CupertinoIcons.person), label: 'Profile'),
              ],
              currentIndex: state.selectedIndex,
              onTap: (index) {
                context.read<NavigationBloc>().add(NavigateToPage(index));
              },
              backgroundColor: Colors.white,
              unselectedItemColor: Colors.grey,
              selectedItemColor: Colors.deepPurple,
            );
          },
        ),
      ),
    );
  }
}