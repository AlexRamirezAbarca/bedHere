import 'package:bedhere/modules/login_page/widgets/login_page_body.dart';
import 'package:bedhere/shared/widgets/alert_modal.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Stack(
          children: [
            LoginPageBody(),
            AlertModal()
          ],
        ),
    );
  }
}