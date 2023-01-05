part of 'pages.dart';

class WrapperPage extends StatefulWidget {
  const WrapperPage({Key? key}) : super(key: key);

  @override
  State<WrapperPage> createState() => _WrapperPageState();
}

class _WrapperPageState extends State<WrapperPage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RoutesCubit, RoutesState>(
        builder: (_, pageState) => (pageState is RoutesSplashScreenPage)
            ? SplashScreenPage()
            : (pageState is RoutesDashboardPage)
                ? DashboardPage()
                : Container());
  }
}
