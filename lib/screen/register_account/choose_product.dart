import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../app/const/colors.dart';

class Product extends StatelessWidget {
  const Product({super.key});

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
                padding: const EdgeInsets.only(top: 40),
                child: Image.asset('assets/images/logobni.png')),
            const SizedBox(height: 10),
            Container(
              alignment: Alignment.centerLeft,
              child: const Text(
                'Pilih Produk Simpanan',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primaryColor),
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              'Pilih produk simpanan sesuai kebutuhan kamu, kamu bisa punya lebih dari satu rekening kok',
              style: TextStyle(fontSize: 12, color: AppColors.secondaryColor),
            ),
          ],
        ),
      ),
    );
  }
}
