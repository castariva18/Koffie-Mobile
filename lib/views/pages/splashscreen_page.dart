part of 'pages.dart';

class SplashScreenPage extends StatefulWidget {
  SplashScreenPage({Key? key}) : super(key: key);

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    _checkStatusPageToken();
    super.initState();
  }

  Future<void> _checkStatusPageToken() async {
    var duration = const Duration(milliseconds: 3000);
    Timer(duration, () {
      context.read<RoutesCubit>().emit(RoutesLoginPage());
    });
  }

  Widget content() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Koffie',
            style: whiteTextStyleInter.copyWith(
              fontWeight: bold,
              fontSize: 48.0,
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            'Amazing Taste of coffee',
            style: whiteTextStyleInter.copyWith(
              fontWeight: regular,
              fontSize: 22.0,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 100,
          ),
          const SpinKitThreeInOut(
            color: kSecondaryColor,
            size: 20,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          color: kPrimaryColor,
        ),
        SafeArea(
          child: Container(
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage(
                  'assets/coffee.jpg',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        content(),
      ],
    ));
  }
}
