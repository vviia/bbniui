import 'package:bni/screen/login/login.dart';
import 'package:flutter/material.dart';

import '../screen/loading_menu.dart';
import '../screen/register_account/choose_product.dart';
import '../screen/register_account/detail_product.dart';
import '../screen/register_account/register_account.dart';
import '../screen/register_account/register_form.dart';
import '../screen/register_account/upload_document.dart';

final Map<String, WidgetBuilder> routes = {
   '/': (context) => const LoadingMenu(),
  '/register': (context) => const AccountRegister(),
  '/upload_document': (context) => const UploadDocument(),
  '/register_form': (context) => const RegisterForm(),
  '/product': (context) => const Product(),
  '/product_detail': (context) => const ProductDetail(),
  '/login': (context) => const LoginPage(),
};