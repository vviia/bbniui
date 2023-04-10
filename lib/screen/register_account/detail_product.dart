import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../app/const/colors.dart';
import '../../widget/botton/primary_botton.dart';
import '../../widget/box_widget/box_widget.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

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
            Image.asset('assets/images/bnibig.png'),
            const SizedBox(height: 10),
            Container(
              alignment: Alignment.center,
              child: const Text(
                'BNI Taplus Muda',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primaryColor),
              ),
            ),
            const SizedBox(height: 5),
            Container(
              alignment: Alignment.center,
              child: const Text(
                'BNI Taplus Muda merupakan produk tabungan yang diperuntukkan untuk para pelajar dan mahasiswa yang berusia 17-25 tahun. Dengan produk ini kamu bisa menabung dengan mudah dan aman.',
                style: TextStyle(fontSize: 12, color: AppColors.secondaryColor),
                textAlign: TextAlign.center,
              ),
            ),
            MyBox(
              title: 'Box 1',
              content: 'This is the content of box 1.',
            ),
            const Spacer(),
            PrimaryButton(
              text: 'Pilih Produk',
              onPressed: () {
                Navigator.pushNamed(context, '/product_detail');
              },
            ),
          ],
        ),
      ),
    );
  }
}

