import 'package:flutter/material.dart';

import '../core/app_constants/orientation_type.dart';
import '../core/color_manager/color_manager.dart';

class CustomScaffold extends StatelessWidget {
  final PreferredSizeWidget? appBar;
  final Widget? body;
  final Widget? navBar;
  final Color? backColor;
  final GlobalKey<ScaffoldState>? scaffoldKey;

  const CustomScaffold(
      {Key? key,
      this.scaffoldKey,
      this.appBar,
      this.body,
      this.navBar,
      this.backColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: backColor ?? ColorManager.scaffoldBackGroundColor,
      bottomNavigationBar: navBar,
      appBar: appBar,
      resizeToAvoidBottomInset: true,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: OrientationBuilder(
            builder: (BuildContext context, Orientation orientation) {
          isLandScape.value = orientation == Orientation.landscape;
          return SafeArea(child: body ?? const SizedBox());
        }),
      ),
    );
  }
}
