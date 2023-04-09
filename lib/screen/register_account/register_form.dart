import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:intl/intl.dart';

import '../../app/const/colors.dart';
import '../../widget/botton/primary_botton.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({super.key});

  

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
                'Formulir Pendaftaran',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primaryColor),
              ),
            ),
            const SizedBox(height: 5),
            const Text(
                'Silahkan isi data yang masih kosong dan jika ada yang salah silahkan dibetulkan ya!',
                style:
                    TextStyle(fontSize: 12, color: AppColors.secondaryColor)),
            const SizedBox(height: 15),
            const NIKForm(),
            const Spacer(),
            const NameForm(),
            const Spacer(),
            BirthForm(),
            const Spacer(),
            const ReligionForm(),
            const Spacer(),
            const AdressForm(),
            const Spacer(),
            const PurposeForm(),
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
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
                text: 'Pilih Produk',
                onPressed: () {
                  Navigator.pushNamed(context, '/product');
                }),
          ],
        ),
      ),
    );
  }
}

class NIKForm extends StatelessWidget {
  const NIKForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Nomor Induk Kependidikan (NIK)',
          style: TextStyle(
            fontSize: 13,
            color: AppColors.secondaryColor,
          ),
        ),
        const SizedBox(height: 5),
        Container(
          padding: const EdgeInsets.all(5),
          height: 40,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: AppColors.secondaryColor),
            borderRadius: BorderRadius.circular(5),
          ),
          child: const TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: '351234567801',
              hintStyle: TextStyle(
                fontSize: 12,
                color: AppColors.secondaryColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class NameForm extends StatelessWidget {
  const NameForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Nama Sesuai KTP',
          style: TextStyle(
            fontSize: 13,
            color: AppColors.secondaryColor,
          ),
        ),
        const SizedBox(height: 5),
        Container(
          padding: const EdgeInsets.all(5),
          height: 40,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: AppColors.secondaryColor),
            borderRadius: BorderRadius.circular(5),
          ),
          child: const TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Octavia Aul',
              hintStyle: TextStyle(
                fontSize: 12,
                color: AppColors.secondaryColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class BirthForm extends StatelessWidget {
  BirthForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Tempat, Tanggal Lahir',
          style: TextStyle(
            fontSize: 13,
            color: AppColors.secondaryColor,
          ),
        ),
        const SizedBox(height: 5),
        Container(
          padding: const EdgeInsets.all(5),
          height: 40,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: AppColors.secondaryColor),
            borderRadius: BorderRadius.circular(5),
          ),
          child: const TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Magelang, 11/10/1999',
              hintStyle: TextStyle(
                fontSize: 12,
                color: AppColors.secondaryColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class ReligionForm extends StatelessWidget {
  const ReligionForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Agama',
          style: TextStyle(
            fontSize: 13,
            color: AppColors.secondaryColor,
          ),
        ),
        const SizedBox(height: 5),
        Container(
          padding: const EdgeInsets.all(5),
          height: 40,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: AppColors.secondaryColor),
            borderRadius: BorderRadius.circular(5),
          ),
          child: const TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Konghucu',
              hintStyle: TextStyle(
                fontSize: 12,
                color: AppColors.secondaryColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class AdressForm extends StatelessWidget {
  const AdressForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Alamat Lengkap',
          style: TextStyle(
            fontSize: 13,
            color: AppColors.secondaryColor,
          ),
        ),
        const SizedBox(height: 5),
        Container(
          padding: const EdgeInsets.all(5),
          height: 40,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: AppColors.secondaryColor),
            borderRadius: BorderRadius.circular(5),
          ),
          child: const TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Griya Ardhana Pogung Raya',
              hintStyle: TextStyle(
                fontSize: 12,
                color: AppColors.secondaryColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class PurposeForm extends StatelessWidget {
  const PurposeForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Tujuan Pembukaan Rekening',
          style: TextStyle(
            fontSize: 13,
            color: AppColors.secondaryColor,
          ),
        ),
        const SizedBox(height: 5),
        Container(
          padding: const EdgeInsets.all(5),
          height: 40,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: AppColors.secondaryColor),
            borderRadius: BorderRadius.circular(5),
          ),
          child: const TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Investasi',
              hintStyle: TextStyle(
                fontSize: 12,
                color: AppColors.secondaryColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
