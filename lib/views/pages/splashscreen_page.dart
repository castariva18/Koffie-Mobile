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
      // ignore: invalid_use_of_visible_for_testing_member, invalid_use_of_protected_member
      context.read<RoutesCubit>().emit(RoutesDashboardPage());
    });
  }

  Widget imageCenter() {
    return Container(
      height: 120,
      width: 200,
      // decoration: const BoxDecoration(
      //   image: DecorationImage(
      //     image: AssetImage('assets/images/ic_icon_primary.png'),
      //   ),
      // ),
    );
  }

  Widget content() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          imageCenter(),
          Text(
            'Your attending assistant',
            style: whiteTextStyleInter.copyWith(
              fontWeight: bold,
              fontSize: 18.0,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 100,
          ),
          const SpinKitThreeInOut(
            color: kSecondaryColor,
            size: 30,
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
        // warna paling bawah
        Container(
          color: kPrimaryColor,
        ),
        //warna dasar splash
        SafeArea(
          child: Container(
            color: kPrimaryColor,
          ),
        ),
        content(),
      ],
    ));
  }
}
