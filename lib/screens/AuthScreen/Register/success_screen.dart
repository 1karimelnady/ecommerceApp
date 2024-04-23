import 'package:ecommerce_app/screens/AuthScreen/login/login_screen.dart';
import 'package:flutter/material.dart';

import '../../../app_manager/routes_manager.dart';
import '../../../utilites/device/device_utility.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 56 * 2,
            left: 24 * 2,
            right: 24 * 2,
            bottom: 24 * 2,
          ),
          child: Column(
            children: [
              Image(
                width: DeviceUtils.getScreenWidth(context) * 0.6,
                image: const AssetImage("images/Ecommerce-manager-skills.webp"),
              ),
              const SizedBox(
                height: 32,
              ),
              Text(
                'Your account created successfully ',
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 16,
              ),

              Text(
                'Welcome to your ultimate Shopping Destination your Account is created  ',
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    RoutesManager.navigatorAndRemove(
                        context, const LoginScreen());
                  },
                  child: const Text('Continue'),
                ),
              ),

              // DropdownButtonHideUnderline(
              //   child: Container(
              //     padding: const EdgeInsets.only(left: 5.0),
              //     decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(10.0),
              //       border: Border.all(color: Colors.grey),
              //     ),
              //     child: DropdownButton<String>(
              //       hint: const Text('Select an option'),
              //       value: selectedItem,
              //       onChanged: (String? newValue) {
              //         setState(() {
              //           selectedItem = newValue!;
              //         });
              //       },
              //       items: items.map((String value) {
              //         return DropdownMenuItem<String>(
              //           value: value,
              //           child: Text(value),
              //         );
              //       }).toList(),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
