import 'package:flutter/material.dart';
import '../../presentation/screens/login_screen.dart';

class AppRoutes {
  static Route onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return _materialRoute(LoginScreen());

      /*    case '/ArticleDetails':
        return _materialRoute(ArticleDetailsView(article: settings.arguments as ArticleEntity));

      case '/SavedArticles':
        return _materialRoute(const SavedArticles());*/

      default:
        return _materialRoute(LoginScreen());
    }
  }

  static Route<dynamic> _materialRoute(Widget view) {
    return MaterialPageRoute(builder: (_) => view);
  }
}
