import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'core/app_export.dart';
import 'routes/app_routes.dart'; // Mengimpor file routes
import 'theme/theme_helper.dart'; // Mengimpor file tema yang telah dijelaskan
import 'package:sizer/sizer.dart' as sizer_pkg; // Mengimpor paket Sizer dengan alias yang lebih jelas

var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  ThemeHelper().changeTheme('lightCode'); // Pastikan tema diubah ke 'lightCode'
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return sizer_pkg.Sizer( // Menggunakan alias sizer_pkg untuk menghindari konflik
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          theme: theme,
          title: 'vanessa_shinta_s_application2',
          debugShowCheckedModeBanner: false,
          initialRoute: AppRoutes.initialRoute,
          routes: AppRoutes.routes,
        );
      },
    );
  }
}
