import 'package:flutter/material.dart';

import '../app/const/colors.dart';
import '../widget/botton/primary_botton.dart';

class LoadingMenu extends StatelessWidget {
  const LoadingMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Image.asset('assets/images/logobni.png')),
            const SizedBox(height: 20),
            Image.asset('assets/images/landingmenu.png'),
            const SizedBox(height: 20),
            Container(
              alignment: Alignment.centerLeft,
              child: const Text(
                'BNI Super App',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primaryColor),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
                'Wujudkan semua keinginanmu #GakPakeNanti dan nikmati segala kemudahan BNI MOBILE BANKING',
                style:
                    TextStyle(fontSize: 12, color: AppColors.secondaryColor)),
            const SizedBox(height: 20),
            PrimaryButton(
                text: 'Sudah Punya Akun',
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                }),
            const SizedBox(height: 20),
            PrimaryButtonBorder(
                text: 'Belum Punya Akun',
                onPressed: () {
                  Navigator.pushNamed(context, '/register');
                }),
          ],
        ),
      ),
    );
  }
}
