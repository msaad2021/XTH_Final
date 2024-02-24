import 'package:flutter/material.dart';
import 'package:xth_app/constant/assets.dart';
import 'package:xth_app/views/UI/widgets/custombutton.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: const ShapeDecoration(
                  shape: CircleBorder(
                    side: BorderSide(
                      color: Colors.orange,
                      width: 5,
                    ),
                  ),
                ),
                child: Image.asset(
                  Assets.ProfilePiclogo,
                  height: 100,
                  width: 100,
                  fit: BoxFit.cover,
                ),
              ),
              const Text('John Doe'),
              const Text('john.doe@example.com'),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                width: 250,
                child: CustomButton(
                    color: Colors.orange,
                    buttonText: 'Upgrade to PRO',
                    onPressed: () {}),
              ),
              SizedBox(
                height: 25,
              ),
              SizedBox(
                width: 380,
                child: CustomButton(
                  isActive: true,
                  isIconButton: true,
                  buttonText: 'Privacy',
                  onPressed: () {},
                  icon: Icons.privacy_tip_sharp,
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                width: 380,
                child: CustomButton(
                  isActive: true,
                  isIconButton: true,
                  buttonText: 'Purchase History',
                  onPressed: () {},
                  icon: Icons.history,
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                width: 380,
                child: CustomButton(
                  isActive: true,
                  isIconButton: true,
                  buttonText: 'Help & Support',
                  onPressed: () {},
                  icon: Icons.help,
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                width: 380,
                child: CustomButton(
                  isActive: true,
                  isIconButton: true,
                  buttonText: 'Settings',
                  onPressed: () {},
                  icon: Icons.settings,
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                width: 380,
                child: CustomButton(
                  isActive: true,
                  isIconButton: true,
                  buttonText: 'Invite a friend',
                  onPressed: () {},
                  icon: Icons.person_add_alt_rounded,
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                width: 380,
                child: CustomButton(
                  buttonText: 'Logout',
                  onPressed: () {},
                  color: Colors.black,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
