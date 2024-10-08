import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:wisp_app/simple_bloc_observer.dart';
import 'package:wisp_app/utils/pref_utils.dart';
import 'package:wisp_app/wisp_app.dart';

var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");

  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [
    SystemUiOverlay.top,
  ]);

  Gemini.init(apiKey: dotenv.env['GEMINI_API_KEY']!);
  Bloc.observer = const SimpleBlocObserver();
  Future.wait([
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]),
    PrefUtils().init(),
  ]).then(
    (value) {
      runApp(
        const WispApp(),
      );
    },
  );
}
