// ignore_for_file: use_build_context_synchronously

import 'package:bedhere/modules/splash_page/widgets/splash_page_body.dart';
import 'package:bedhere/shared/helpers/global_helper.dart';
import 'package:bedhere/shared/providers/functional_provider.dart';
import 'package:bedhere/shared/secure/user_data_storage.dart';
import 'package:bedhere/shared/widgets/alert_modal.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../shared/widgets/alerts_template.dart';


class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _verifySessions();
    });
    super.initState();
  }

  void _verifySessions() async {
    final userSession = await UserDataStorage().getUserData();
    await Future.delayed(const Duration(seconds: 3));
    if (userSession == null) {
      final keyAlertSessionsInformation = GlobalHelper.genKey();
      final fp = Provider.of<FunctionalProvider>(context, listen: false);
      fp.showAlert(
        key: keyAlertSessionsInformation,
        content: AlertGeneric(
          content: ConfirmContent(
            confirm: () {
              fp.dismissAlert(key: keyAlertSessionsInformation);
              Future.delayed(
                  const Duration(seconds: 3),
                  () =>
                      GlobalHelper.navigateToPageRemove(context, '/login_page'));
            },
            cancel: () {
              fp.dismissAlert(key: keyAlertSessionsInformation);
              Future.delayed(
                  const Duration(seconds: 3),
                  () =>
                      GlobalHelper.navigateToPageRemove(context, '/home_page'));
            },
            message:
                'No tienes ninguna sesión activa, inicia sesíon para disfrutar de todas las funcionalidad de Bed Here',
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          SplashPageBody(),
          AlertModal()
          ]),
    );
  }
}
