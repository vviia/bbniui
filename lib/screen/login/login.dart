import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../app/const/colors.dart';
import '../../widget/botton/primary_botton.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Image.asset('assets/images/logobni.png')),
            const SizedBox(height: 20),
            Image.asset('assets/images/login.png'),
            const SizedBox(height: 20),
            Container(
              alignment: Alignment.centerLeft,
              child: const Text(
                'Login BNI MOBILE',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primaryColor),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
                'Sekarang kamu udah bisa nikmatin semua fiturnya, aktifkan smart login dan setting ya',
                style:
                    TextStyle(fontSize: 12, color: AppColors.secondaryColor)),
            const SizedBox(height: 10),
            Container(
              alignment: Alignment.centerLeft,
              child: const Text('Username',
                  style: TextStyle(
                      color: AppColors.secondaryColor,
                      fontSize: 12,
                      fontWeight: FontWeight.bold)),
            ),
            const SizedBox(height: 10),
            Container(
              height: 40,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  // color: AppColors.primaryColor,
                  border: Border.all(color: AppColors.secondaryColor),
                  borderRadius: BorderRadius.circular(10)),
              child: const TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Masukan Username',
                    hintStyle: TextStyle(color: AppColors.secondaryColor, fontSize: 12 )),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              alignment: Alignment.centerLeft,
              child: const Text('Password',
                  style: TextStyle(
                      color: AppColors.secondaryColor,
                      fontSize: 12,
                      fontWeight: FontWeight.bold)),
            ),
            const SizedBox(height: 10),
            Container(
              height: 40,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  // color: AppColors.primaryColor,
                  border: Border.all(color: AppColors.secondaryColor),
                  borderRadius: BorderRadius.circular(10)),
              child: const TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Masukan Password',
                    hintStyle: TextStyle(color: AppColors.secondaryColor, fontSize: 12)),
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/images/ojk.png'),
                const SizedBox(width: 10),
                Image.asset('assets/images/lps.png'),
                const SizedBox(width: 10),
                Image.asset('assets/images/bumn.png'),
              ],
            ),
            const SizedBox(height: 20),
            PrimaryButton(
                text: 'Login',
                onPressed: () {
                  Navigator.pushNamed(context, '/smart_login');
                }),
          ],
        ),
      ),
    );
  }
}
