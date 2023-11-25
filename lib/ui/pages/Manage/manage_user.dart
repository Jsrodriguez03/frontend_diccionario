import 'package:flutter/material.dart';
import 'package:frontend_diccionario/ui/config/theme/app_theme.dart';
import 'package:frontend_diccionario/ui/widgets/DataTable/data_table.dart';
import 'package:frontend_diccionario/ui/widgets/appBar/custom_appbar.dart';

class ManageUser extends StatelessWidget {
  const ManageUser({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    const columnas = ["Id", "Nombre", "Apellido", ""];
    const filas = [
      ["1", "Luis", "Pinto"],
      ["2", "Nayid", "Castellar"],
      ["3", "Junior", "Rodriguez"],
      ["4", "Juliana", "Aaron"],
      ["5", "Steven", "Molina"],
    ];

    return Scaffold(
      appBar: CustomAppBar(title: const Text("Usuarios")),
      backgroundColor: AppTheme.primary,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 5),
          Container(
            padding: const EdgeInsets.all(10),
            width: screenWidth * 0.9,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            constraints: const BoxConstraints(maxHeight: 500),
            child: Expanded(
                child: Column(
              children: [
                SizedBox(
                  width: screenWidth * 0.95,
                  child: const Text(
                    'Usuarios',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFE6C068),
                      fontSize: 40,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                const CustomDataTable(
                  columnas: columnas,
                  filas: filas,
                  tipo: 0,
                )
              ],
            )),
          )
        ],
      ),
    );
  }
}
