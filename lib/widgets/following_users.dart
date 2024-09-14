import 'package:flutter/material.dart';
import 'package:flutter_social_ui_main/models/user_model.dart';

import '../data/data.dart';

class FollowingUsers extends StatelessWidget {
  const FollowingUsers({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 10.0),
          child: Text(
            'Following',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 2.0,
            ),
          ),
        ),
        SizedBox(
          height: 80.0,
          child: ListView.builder(
            padding: const EdgeInsets.only(left: 10.0),
            scrollDirection: Axis.horizontal,
            itemCount: users.length,
            itemBuilder: (context, index) {
              User user = users[index];
              return Container(
                margin: const EdgeInsets.all(10.0),
                height: 60.0,
                width: 60.0,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2.0,
                    color: Theme.of(context).primaryColor,
                  ),
                  shape: BoxShape.circle,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0, 2),
                      blurRadius: 6.0,
                    ),
                  ],
                ),
                child: ClipOval(
                  child: Image(
                    height: 60.0,
                    width: 60.0,
                    fit: BoxFit.cover,
                    image: AssetImage(user.profileImageUrl!),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
