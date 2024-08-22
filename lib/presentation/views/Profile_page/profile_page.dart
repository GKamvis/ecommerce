import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/presentation/views/Orders_page/orders.dart';
import 'package:myapp/presentation/views/Profile_page/Profile_pages_widgets/Profile_page_tabs.dart';

import 'Profile_pages_widgets/Profile_page_user_info.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            // image
            const ProfilePageUserInfo(),

            ProfilePageTabs(
              leadingIcon: CupertinoIcons.person_fill,
              text: 'Profile',
            ),
            ProfilePageTabs(
              leadingIcon: CupertinoIcons.settings_solid,
              text: 'Settings',
            ),
            ProfilePageTabs(
              leadingIcon: CupertinoIcons.mail_solid,
              text: 'Contact',
            ),
            ProfilePageTabs(
              leadingIcon: Icons.share,
              text: 'Share App',
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => const OrdersPage() , ));
              },
              child: ProfilePageTabs(
                leadingIcon: CupertinoIcons.cart_fill,
                text: 'Orders',
              ),
            ),

            const Text(
              "Sign Out",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(245, 95, 31, 1)),
            ),
          ],
        ));
  }
}
