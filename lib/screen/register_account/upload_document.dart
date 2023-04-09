import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../app/const/colors.dart';
import '../../widget/botton/primary_botton.dart';

class UploadDocument extends StatelessWidget {
  const UploadDocument({super.key});

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
            Image.asset('assets/images/upload_documen.png'),
            const SizedBox(height: 20),
            Container(
              alignment: Alignment.centerLeft,
              child: const Text(
                'Upload Dokumen Yuk',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primaryColor),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
                'Upload dokumen yang diperlukan dibawah ya! pastika dokumen asli dan berlaku',
                style:
                    TextStyle(fontSize: 12, color: AppColors.secondaryColor)),
            const SizedBox(height: 10),
            // make form here
            const KTPFormInput(),
            const SizedBox(height: 10),
            const KKFormInput(),
            const SizedBox(height: 10),
            const NPWPFormInput(),

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
                  Navigator.pushNamed(context, '/register_form');
                }),
          ],
        ),
      ),
    );
  }
}

class KTPFormInput extends StatelessWidget {
  const KTPFormInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: AppColors.secondaryColor
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Image.asset(
              'assets/images/upload.png',
              width: 30,
              height: 30,
            ),
          ),
          const Text(
            'KTP Elektronik',
            style: TextStyle(
              fontSize: 12,
              color: AppColors.secondaryColor,
            ),
          ),
          const Spacer(),
          IconButton(
            icon: const Icon(
              Icons.close,
              color: AppColors.secondaryColor,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

class KKFormInput extends StatelessWidget {
  const KKFormInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: AppColors.secondaryColor
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Image.asset(
              'assets/images/upload.png',
              width: 30,
              height: 30,
            ),
          ),
          const Text(
            'Kartu Keluarga',
            style: TextStyle(
              fontSize: 12,
              color: AppColors.secondaryColor,
            ),
          ),
          const Spacer(),
          IconButton(
            icon: const Icon(
              Icons.close,
              color: AppColors.secondaryColor,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}


class NPWPFormInput extends StatelessWidget {
  const NPWPFormInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: AppColors.secondaryColor
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Image.asset(
              'assets/images/upload.png',
              width: 30,
              height: 30,
            ),
          ),
          const Text(
            'NPWP (opsional)',
            style: TextStyle(
              fontSize: 12,
              color: AppColors.secondaryColor,
            ),
          ),
          const Spacer(),
          IconButton(
            icon: const Icon(
              Icons.close,
              color: AppColors.secondaryColor,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
