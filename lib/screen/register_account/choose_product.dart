import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../app/const/colors.dart';
import '../../widget/botton/primary_botton.dart';

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
            const SizedBox(height: 10),
            const TaplusMuda(),
            const Spacer(),

            PrimaryButton(
                text: 'Pilih Produk',
                onPressed: () {
                  Navigator.pushNamed(context, '/product_detail');
                }),
          ],
        ),
      ),
    );
  }
}

class TaplusMuda extends StatelessWidget {
  const TaplusMuda({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.21,
      width: double.infinity,
      child: Card(
        color: AppColors.cardColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Image.asset('assets/images/bnicard1.png'),
              ),
              const SizedBox(width: 10.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'BNI Taplus Muda',
                      style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          color: AppColors.primaryColor),
                    ),
                    const SizedBox(height: 5.0),
                    const Text(
                      'BNI Taplus Muda merupakan produk tabungan yang diperuntukkan bagi anak muda indonesia mulai dari usia 17 tahun sampai dengan 35 tahun. ',
                      style: TextStyle(
                          fontSize: 10, color: AppColors.secondaryColor),
                    ),
                    const SizedBox(height: 5.0),
                    CardBottom(
                        text: 'Info Selengkapnya',
                        onPressed: () {
                          Navigator.pushNamed(context, '/upload_document');
                        }),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
