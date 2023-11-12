import 'package:flutter/material.dart';
import 'package:frontend_diccionario/ui/config/theme/app_theme.dart';
import 'package:frontend_diccionario/ui/widgets/WidgetsProfile/ImagenProfile/icon_circle_profile.dart';
import 'package:get/get.dart';

class ImagenPerfil extends StatelessWidget {
  const ImagenPerfil({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    AppTheme appTheme = AppTheme();
    return SizedBox(
      width: 180,
      height: 190,
      child: Stack(
        children: [
          IconCircleProfile(
            directionIconCircle: 0,
            dimensionIconCircle: 170,
            colorIconCircle: appTheme.color("fourth"),
            colorIcon: appTheme.color("third"),
            iconCircle: Icons.person_rounded,
            sizeIconCircle: 110,
          ),
          IconCircleProfile(
            directionIconCircle: 115,
            dimensionIconCircle: 50,
            colorIconCircle: appTheme.color("secondary"),
            colorIcon: Colors.black,
            iconCircle: Icons.camera_alt,
            sizeIconCircle: 33,
            onPressed: () {
              Get.toNamed("/profile-adm");
            },
          )
        ],
      ),
    );
  }
}
