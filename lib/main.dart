import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega_store_task/features/splash_view/splash_view_form.dart';
import 'core/app_constants/app_constants.dart';
import 'core/router/router.dart';
import 'core/utils/observer.dart';
import 'features/home_navigator/bloc/cubit.dart';

void main() async {
  // WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  /** To Close LandScape */
  // SystemChrome.setPreferredOrientations(
  //     [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  /** Bloc Observer */
  Bloc.observer = AppBlocObserver();
  runApp(MegaStoreTask());
}

class MegaStoreTask extends StatelessWidget {
  const MegaStoreTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => HomeCubit()),
      ],
      child: ScreenUtilInit(
          designSize: const Size(375, 812),
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (context, child) {
            return MaterialApp(
              navigatorKey: navigatorKey,
              onGenerateRoute: onGenerateRoute,
              debugShowCheckedModeBanner: false,
              theme: ThemeData(fontFamily: 'Poppins', textTheme: textTheme),
              home: const SplashViewForm(),
            );
          }),
    );
  }
}
