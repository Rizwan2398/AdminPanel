import 'package:flutter/material.dart';
import 'package:grocery_admin_panel/consts/constants.dart';
import 'package:grocery_admin_panel/widgets/header.dart';
import 'package:grocery_admin_panel/widgets/products_widget.dart';
import 'package:provider/provider.dart';

import '../controllers/MenuController.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            Header(
              fct: () {
                context.read<MenuControllerr>().controlDashboarkMenu();
              },
            ),
            const SizedBox(height: defaultPadding),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  // flex: 5,
                  child: Column(
                    children: const [
                      SizedBox(
                     
                        child: ProductWidget(),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
