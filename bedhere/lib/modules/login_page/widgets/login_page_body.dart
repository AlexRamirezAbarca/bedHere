import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../../env/theme/app_theme.dart';
import '../../../shared/helpers/global_helper.dart';
import '../../../shared/providers/functional_provider.dart';
import '../../../shared/widgets/alerts_template.dart';
import '../../../shared/widgets/fillet_button.dart';
import '../../../shared/widgets/placeholder.dart';
import '../../../shared/widgets/text_button_text.dart';
import '../../../shared/widgets/text_form_field.dart';
import '../../../shared/widgets/title.dart';

class LoginPageBody extends StatefulWidget {
  const LoginPageBody({super.key});

  @override
  State<LoginPageBody> createState() => _LoginPageBodyState();
}

class _LoginPageBodyState extends State<LoginPageBody> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController usernameChangePassword = TextEditingController();
  bool snap = false;
  bool floating = false;
  bool showPassword = false;
  AppTheme appTheme = AppTheme();
  GlobalHelper globalHelper = GlobalHelper();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final fp = Provider.of<FunctionalProvider>(context, listen: false);
    return SizedBox(
      width: size.width,
      height: size.height,
      child: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: AppTheme.primaryColor,
            child: Align(
              alignment: const Alignment(0, -0.5),
              child: Text(
                'BedHere',
                style: GoogleFonts.archivoBlack(
                    height: 1,
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    letterSpacing: -1,
                    color: AppTheme.white),
              ),
            ),
          ),
          FadeInUp(
            delay: const Duration(milliseconds: 600),
            child: Align(
              alignment: const Alignment(0, 1),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25)),
                child: Container(
                  height: MediaQuery.of(context).size.height / 2 + 90,
                  width: MediaQuery.of(context).size.width,
                  color: AppTheme.white,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 20),
                    child: SingleChildScrollView(
                      child: Column(
                        children: <Widget>[
                          const SizedBox(height: 25),
                          title(
                              fontName: 'Roboto',
                              title: 'Iniciar Sesión',
                              color: AppTheme.secondaryColor,
                              fontSize: 20,
                              fontWeight: FontWeight.w700),
                          const SizedBox(height: 30),
                          Padding(
                              padding:
                                  EdgeInsets.only(left: size.width * 0.050),
                              child: placeHolderWidget(placeholder: 'Usuario')),
                          const SizedBox(height: 5),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: CustomTextField(
                              controller: _usernameController,
                              textInputAction: TextInputAction.next,
                            ),
                          ),
                          const SizedBox(height: 20),
                          Padding(
                              padding:
                                  EdgeInsets.only(left: size.width * 0.050),
                              child:
                                  placeHolderWidget(placeholder: 'Contraseña')),
                          const SizedBox(height: 5),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: CustomTextField(
                              controller: _passwordController,
                              obscureText: !showPassword,
                              suffixIcon: IconButton(
                                color: AppTheme.textColorPrimary,
                                icon: !showPassword
                                    ? const Icon(Icons.remove_red_eye_outlined)
                                    : const Icon(Icons.visibility_off_outlined),
                                onPressed: () {
                                  setState(() {
                                    showPassword = !showPassword;
                                  });
                                },
                              ),
                            ),
                          ),
                          const SizedBox(height: 35),
                          TextButtonWidget(
                            text: '¿Olvidaste tu contraseña?',
                            size: 14,
                            textColor: AppTheme.secondaryColor,
                            onPressed: () {
                              final bedHereChangePassword =
                                  GlobalHelper.genKey();
                              fp.showAlert(
                                  key: bedHereChangePassword,
                                  content: AlertGeneric(
                                      content: AlertChangePassword(
                                    message: 'Olvidé mi contraseña',
                                    confirm: () {
                                      fp.dismissAlert(
                                          key: bedHereChangePassword);
                                    },
                                    cancel: () {
                                      fp.dismissAlert(
                                          key: bedHereChangePassword);
                                    },
                                    controller: usernameChangePassword,
                                  )));
                            },
                          ),
                          const SizedBox(height: 15),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '¿No tienes cuenta?',
                                style: GoogleFonts.roboto(
                                    fontSize: 14,
                                    color: AppTheme.textColorPrimary),
                              ),
                              const SizedBox(width: 5),
                              TextButtonWidget(
                                textColor: AppTheme.textColorPrimary,
                                text: 'Registrate',
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline,
                                size: 14,
                                decorationColor: AppTheme.textColorPrimary,
                                onPressed: () {
                                  // final keyPageRegister = GlobalHelper.genKey();
                                  // fp.addPage(
                                  //   key: keyPageRegister,
                                  //   content: RegisterPage(
                                  //     keyPage: keyPageRegister,
                                  //     key: keyPageRegister,
                                  //   ),
                                  // );
                                },
                              ),
                            ],
                          ),
                          const SizedBox(height: 45),
                          FilledButtonWidget(
                            width: 170,
                            height: 45,
                            text: 'Iniciar sesión',
                            onPressed: () {
                              // final keyAlertError = GlobalHelper.genKey();
                              // if (_usernameController.text.trim() == '' ||
                              //     _passwordController.text.trim() == '') {
                              //   fp.showAlert(
                              //     key: keyAlertError,
                              //     content: AlertGeneric(
                              //       keyToClose: keyAlertError,
                              //       content: ErrorGeneric(
                              //         keyToClose: keyAlertError,
                              //         message:
                              //             'Por favor, llena los campos requeridos para poder iniciar sesión',
                              //       ),
                              //     ),
                              //   );
                              // } else {
                              //   // final body = {
                              //   //   "user_name": _usernameController.text.trim(),
                              //   //   "password": _passwordController.text.trim()
                              //   // };
                              //   // login(body: body);
                              // }
                            },
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
