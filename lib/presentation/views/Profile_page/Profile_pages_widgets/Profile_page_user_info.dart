import 'package:flutter/cupertino.dart';

class ProfilePageUserInfo extends StatelessWidget {
  const ProfilePageUserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return   Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: SizedBox(
                      height: 60,
                      width: 60,
                      child: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRVA_HrQLjkHiJ2Ag5RGuwbFeDKRLfldnDasw&s',
                      ),
                    ),
                  ),

                  // name

                  const Text(
                    "Feli Bağlama ",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),

                  // email

                  const Text('quvvətləndirici@ədat.da'),
                ],
              ),
            );
  }
}