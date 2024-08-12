import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wisp_app/routing/app_routes.dart';
import 'package:wisp_app/services/navigator_service.dart';
import 'package:wisp_app/theme/custom_text_styles.dart';
import 'package:wisp_app/theme/app_colors.dart';
import 'package:wisp_app/utils/initialization_repository.dart';
import 'package:wisp_app/utils/size_utils.dart';

class WispApp extends StatelessWidget {
  const WispApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MultiRepositoryProvider(
          providers: [
            RepositoryProvider<InitializationRepository>(
              lazy: true,
              create: (context) => InitializationRepository()..init(),
            ),
            // RepositoryProvider<AuthRepository>(
            //   create: (context) => AuthRepository(
            //     dioClient: context.read<InitializationRepository>().dioClient,
            //   ),
            // ),
          ],
          child: GestureDetector(
            onTap: () {
              FocusManager.instance.primaryFocus?.unfocus();
            },
            child: MaterialApp(
              title: 'Bloc Architecture Demo',
              debugShowCheckedModeBanner: false,
              navigatorKey: NavigatorService.navigatorKey,
              locale: const Locale('en', ''),
              theme: ThemeData(
                fontFamily: 'Montserrat',
                colorScheme: const ColorScheme.dark(
                  primary: Colors.white,
                  secondary: AppColors.blue,
                  background: Colors.black,
                ),
                useMaterial3: true,
                scaffoldBackgroundColor: Colors.white,
                textTheme: TextTheme(
                  bodyLarge: CustomTextStyles.bodyLarge,
                  bodyMedium: CustomTextStyles.bodyMedium,
                  bodySmall: CustomTextStyles.bodySmall,
                  displaySmall: CustomTextStyles.displaySmall,
                  headlineMedium: CustomTextStyles.headlineMedium,
                  labelLarge: CustomTextStyles.labelLarge,
                  titleLarge: CustomTextStyles.titleLarge,
                  titleMedium: CustomTextStyles.titleMedium,
                  titleSmall: CustomTextStyles.titleSmall,
                ),
              ),
              initialRoute: AppRoutes.splashScreen,
              routes: AppRoutes.routes,
            ),
          ),
        );
      },
    );
  }
}
