import 'package:cashwise/state/app_state.dart';
import 'package:cashwise/view/root_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(MultiProvider(
    providers: [ChangeNotifierProvider<AppState>(create: (_) => AppState())],
    child: const CashWise(),
  ));
}

class CashWise extends StatelessWidget {
  const CashWise({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "cashwise-app",
      color: Color(0xFFFFFFFF),
      home: RootApp(),
    );
  }
}
