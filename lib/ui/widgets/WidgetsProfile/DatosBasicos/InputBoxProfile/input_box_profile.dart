import 'package:flutter/material.dart';
import 'package:frontend_diccionario/ui/config/theme/app_theme.dart';
import 'package:frontend_diccionario/ui/widgets/WidgetsProfile/edit_icon_profile.dart';
import 'package:frontend_diccionario/ui/widgets/WidgetsProfile/DatosBasicos/InputBoxProfile/icon_input.dart';
import 'package:frontend_diccionario/ui/widgets/WidgetsProfile/DatosBasicos/InputBoxProfile/input_text.dart';
import 'package:frontend_diccionario/ui/widgets/WidgetsProfile/DatosBasicos/InputBoxProfile/separator.dart';

class InputBoxProfile extends StatelessWidget {
  final String title;
  final String value;
  final IconData icon;

  const InputBoxProfile({
    super.key,
    required this.title,
    required this.value,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 4),
          child: SizedBox(
            width: 600,
            height: 43,
            child: Stack(
              children: [
                IconInput(icon: icon),

                //Texto del Titulo
                InputText(
                  text: title,
                  top: 5,
                  color: AppTheme.third,
                  size: 15,
                ),

                //Texto del Valor
                InputText(
                  text: value,
                  top: 25,
                  color: Colors.white,
                  size: 20,
                ),

                const Separator(),
                const EditIconProfile(),
              ],
            ),
          ),
        ),
        const SizedBox(height: 5),
      ],
    );
  }
}
