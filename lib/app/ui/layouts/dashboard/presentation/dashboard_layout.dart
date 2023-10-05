import 'package:flutter/material.dart';
import 'package:flutter_structure_web_app/app/ui/layouts/dashboard/presentation/widgets/menu_drawer.dart';
import 'package:flutter_structure_web_app/core/theme/app_colors.dart';
import 'package:flutter_structure_web_app/core/utils/query_size.dart';
import 'package:flutter_structure_web_app/core/utils/responsive.dart';

class DashboardLayout extends StatelessWidget {
  const DashboardLayout({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: GlobalKey(),
      backgroundColor: AppColors.primaryLightColor,
      body: Row(
        children: [
          if (Responsive.isDesktop(context))
            SizedBox(
              width: QuerySize.width(context, 0.18),
              child: const MenuDrawer(),
            ),
          Expanded(child: child)
        ],
      ),
    );
  }
}
