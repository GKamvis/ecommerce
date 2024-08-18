import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePageTabs extends StatelessWidget {
  final leadingIcon;
  String text;

  ProfilePageTabs({required this.leadingIcon, required this.text});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.09,
        width: double.infinity,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    leadingIcon , color: Colors.black,
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Text(text),
                ],
              ),
              Icon(
                CupertinoIcons.chevron_forward
               ,
                size: 19,
              )
            ],
          ),
        ),
      ),
    );
  }
}
