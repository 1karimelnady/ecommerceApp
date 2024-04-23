import 'package:ecommerce_app/app_manager/routes_manager.dart';
import 'package:ecommerce_app/screens/AuthScreen/Register/success_screen.dart';
import 'package:ecommerce_app/utilites/device/device_utility.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../login/login_screen.dart';

class VerifyEmailScreen extends StatefulWidget {
  const VerifyEmailScreen({super.key});

  @override
  State<VerifyEmailScreen> createState() => _VerifyEmailScreenState();
}

class _VerifyEmailScreenState extends State<VerifyEmailScreen> {
  List<String> items = ['item1', 'item2'];

  String selectedItem = 'item1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              RoutesManager.navigatorAndRemove(context, const LoginScreen());
            },
            icon: const Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
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
                'Verify your email address!',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                'karimelnady728@gmail.com',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.labelLarge,
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                'Congratulations your Account Awaits: verify your Email to start shopping and experience a world of and personalized offers  ',
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
                        context, const SuccessScreen());
                  },
                  child: const Text('Continue'),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              TextButton(
                onPressed: () {},
                child: const Text("Resend Email"),
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
