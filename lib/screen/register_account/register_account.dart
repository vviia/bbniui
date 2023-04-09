import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../app/const/colors.dart';
import '../../widget/botton/primary_botton.dart';

class AccountRegister extends StatelessWidget {
  const AccountRegister({super.key});

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
            Image.asset('assets/images/register_account.png'),
            const SizedBox(height: 20),
            Container(
              alignment: Alignment.centerLeft,
              child: const Text(
                'Buka Rekening',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primaryColor),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
                'Buka rekening BNI tanpa perlu ribet ke cabang, cukup siapkan dokumen yang diperlukan',
                style:
                    TextStyle(fontSize: 12, color: AppColors.secondaryColor)),
            const SizedBox(height: 20),
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
                text: 'Buka Rekening BNI',
                onPressed: () {
                  Navigator.pushNamed(context, '/upload_document');
                }),
          ],
        ),
      ),
    );
  }
}
