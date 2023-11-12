import 'package:flutter/material.dart';
import 'package:frontend_diccionario/ui/config/theme/app_theme.dart';
import 'package:frontend_diccionario/ui/widgets/Buttoms/popup_menu_buttom.dart';

class CustomDataTable extends StatelessWidget {
  final dynamic columnas;
  final dynamic filas;
  final int tipo;

  const CustomDataTable(
      {super.key,
      required this.columnas,
      required this.filas,
      required this.tipo});

  @override
  Widget build(BuildContext context) {
    AppTheme theme = AppTheme();
    return DataTable(columnSpacing: 40, columns: [
      for (var column in columnas)
        DataColumn(
            label:
                Text(column, style: TextStyle(color: theme.color("secondary"))))
    ], rows: [
      for (var dato in filas)
        DataRow(cells: [
          for (var info in dato)
            DataCell(Text(info, style: const TextStyle(color: Colors.white))),
          DataCell(CustomPopupMenuButtom(
            tipo: tipo,
          ))
        ])
    ]);
  }
}
