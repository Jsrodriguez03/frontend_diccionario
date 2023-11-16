import 'package:flutter/material.dart';
import 'package:frontend_diccionario/ui/config/theme/app_theme.dart';
import 'package:frontend_diccionario/ui/widgets/Buttoms/custom_elevation_buttom.dart';
import 'package:frontend_diccionario/ui/widgets/Logo/logo.dart';
import 'package:frontend_diccionario/ui/widgets/WidgetsWelcome/card_welcome.dart';
import 'package:frontend_diccionario/ui/widgets/WidgetsWelcome/text_welcome.dart';
import 'package:get/get.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    AppTheme appTheme = AppTheme();
    double screenHeigth = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: appTheme.color("primary"),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Logo(heigth: screenHeigth * 0.14),
          SizedBox(height: screenHeigth * 0.03),
          TextWelcome(
            size: screenHeigth * 0.035,
            title: "¿Quieres aprender la \n lengua ola?",
            colorText: appTheme.color("secondary"),
          ),
          const SizedBox(height: 5),
          TextWelcome(
            size: screenHeigth * 0.02,
            title: "Explora nuestro diccionario \n kankuamo",
            colorText: appTheme.color("third"),
          ),
          SizedBox(height: screenHeigth * 0.05),
          const CardWelcome(),
          SizedBox(height: screenHeigth * 0.05),
          CustomElevatedButton(
            buttonText: "Iniciar Sesión",
            borderRadius: 50,
            width: 0.6,
            onPressed: () {
              Get.toNamed("/login-in");
            },
          ),
        ],
      ),
    );
  }
}
