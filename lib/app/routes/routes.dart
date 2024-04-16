import 'package:go_router/go_router.dart';

import '../presentations/pages/welcome/welcome_page.dart';

class Routes {
  static GoRouter routes = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (_, state) {
          return const WelcomePage();
        },
      ),
    ],
  );
}
