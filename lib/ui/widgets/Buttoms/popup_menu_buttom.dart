import 'package:flutter/material.dart';
import 'package:frontend_diccionario/ui/config/theme/app_theme.dart';
import 'package:get/get.dart';

class CustomPopupMenuButtom extends StatelessWidget {
  final int tipo;

  const CustomPopupMenuButtom({super.key, required this.tipo});

  @override
  Widget build(BuildContext context) {
    AppTheme theme = AppTheme();
    return PopupMenuButton<String>(
        icon: Icon(Icons.more_vert_outlined,color: theme.color("third"),),
        onSelected: (String choice) {
          // Manejar la opción seleccionada
          if(tipo == 0){
            if(choice == 'opcion1'){
              Get.toNamed("/edit-profile");
            }
          }else if(tipo == 1){
            if(choice == 'opcion1'){
              Get.toNamed("/edit-word");
            }
          }
        },
        itemBuilder: (BuildContext context) {
          return <PopupMenuEntry<String>>[
            const PopupMenuItem<String>(
              value: 'opcion1',
              child: Text('Editar'),
            ),
            const PopupMenuItem<String>(
              value: 'opcion2',
              child: Text('Eliminar'),
            )
          ];
        },
      );
  }
}
