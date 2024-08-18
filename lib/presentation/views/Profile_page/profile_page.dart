import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
          ProfilePageUserInfo(),

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

            SizedBox(height: 70,),


            Text("Sign Out" , style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold , color: const Color.fromRGBO(245,95,31 , 1)),),
          ],
          
        ));
  }
}
