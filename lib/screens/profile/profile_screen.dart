import 'package:ecommerce_app/common_widget/custom_appbar.dart';
import 'package:ecommerce_app/screens/home/widget/circular_image.dart';
import 'package:ecommerce_app/screens/home/widget/section_heading.dart';
import 'package:ecommerce_app/screens/profile/widgets/profile_menu.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: Text('Profile'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              Column(
                children: [
                  const CircularImage(
                    imageUrl: 'assets/images/user-128.png',
                    width: 80,
                    height: 80,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text('Choose Profile Picture'))
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              const Divider(),
              const SizedBox(
                height: 16,
              ),
              const SectionHeading(
                title: 'Profile information',
                showActionButton: false,
              ),
              const SizedBox(
                height: 16,
              ),
              ProfileMenu(
                title: 'Name',
                value: 'Karim',
                onPressed: () {},
              ),
              ProfileMenu(
                title: 'username',
                value: 'Karimelnady',
                onPressed: () {},
              ),
              const Divider(),
              const SizedBox(
                height: 16,
              ),
              const SectionHeading(
                title: 'Profile information',
                showActionButton: false,
              ),
              const SizedBox(
                height: 16,
              ),
              ProfileMenu(
                title: 'user ID',
                value: 'Karimelnady33',
                onPressed: () {},
                icon: Iconsax.copy,
              ),
              ProfileMenu(
                title: 'Email',
                value: 'Karimelnady728@gmail.com',
                onPressed: () {},
              ),
              ProfileMenu(
                title: 'Phone Number',
                value: '   +201030536167',
                onPressed: () {},
              ),
              ProfileMenu(
                title: 'Gender',
                value: 'Male',
                onPressed: () {},
              ),
              ProfileMenu(
                title: 'Date of Birth',
                value: '1 sep, 2001',
                onPressed: () {},
              ),
              const Divider(),
              const SizedBox(
                height: 16,
              ),
              Center(
                  child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Close Account',
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.bold),
                      )))
            ],
          ),
        ),
      ),
    );
  }
}
